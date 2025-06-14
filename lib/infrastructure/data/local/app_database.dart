import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static final AppDatabase instance = AppDatabase._init();
  static Database? _database;

  AppDatabase._init();

  // シングルトンのため、factoryコンストラクタを追加
  factory AppDatabase() => instance;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('app.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    // Questionテーブル
    await db.execute('''
      CREATE TABLE questions (
        id TEXT PRIMARY KEY,
        title TEXT NOT NULL,
        question_text TEXT NOT NULL,
        type TEXT NOT NULL, -- 'choice' or 'code'
        section_id TEXT,
        FOREIGN KEY(section_id) REFERENCES sections(id)
      )
    ''');
    // Choiceテーブル（Questionとリレーション）
    await db.execute('''
      CREATE TABLE choices (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        question_id TEXT NOT NULL,
        label TEXT NOT NULL,
        is_correct INTEGER NOT NULL,
        FOREIGN KEY(question_id) REFERENCES questions(id) ON DELETE CASCADE
      )
    ''');
    // Sectionテーブル
    await db.execute('''
      CREATE TABLE sections (
        id TEXT PRIMARY KEY,
        title TEXT NOT NULL,
        description TEXT
      )
    ''');
    // Historyテーブル
    await db.execute('''
      CREATE TABLE histories (
        id TEXT PRIMARY KEY,
        question_id TEXT NOT NULL,
        answer_id TEXT,
        is_correct INTEGER,
        feedback TEXT,
        answered_at TEXT,
        FOREIGN KEY(question_id) REFERENCES questions(id) ON DELETE CASCADE,
        FOREIGN KEY(answer_id) REFERENCES answers(id) ON DELETE SET NULL
      )
    ''');
    // Answerテーブル
    await db.execute('''
      CREATE TABLE answers (
        id TEXT PRIMARY KEY,
        answer_code TEXT,
        choice_id INTEGER,
        FOREIGN KEY(choice_id) REFERENCES choices(id)
      )
    ''');
    // AppSettingテーブル
    await db.execute('''
      CREATE TABLE app_settings (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        api_key TEXT,
        app_version TEXT
      )
    ''');
  }

  // 共通CRUDメソッド
  Future<int> insert(String table, Map<String, dynamic> values) async {
    final db = await instance.database;
    return await db.insert(table, values);
  }

  Future<int> update(
    String table,
    Map<String, dynamic> values,
    String where,
    List<Object?> whereArgs,
  ) async {
    final db = await instance.database;
    return await db.update(table, values, where: where, whereArgs: whereArgs);
  }

  Future<int> delete(
    String table,
    String where,
    List<Object?> whereArgs,
  ) async {
    final db = await instance.database;
    return await db.delete(table, where: where, whereArgs: whereArgs);
  }

  Future<int> deleteAll(String table) async {
    final db = await instance.database;
    return await db.delete(table);
  }

  Future<List<Map<String, dynamic>>> query(
    String table, {
    String? where,
    List<Object?>? whereArgs,
    String? orderBy,
  }) async {
    final db = await instance.database;
    return await db.query(
      table,
      where: where,
      whereArgs: whereArgs,
      orderBy: orderBy,
    );
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
