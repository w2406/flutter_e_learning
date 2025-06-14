import 'package:flutter_e_learning/domain/question/section/repository/section_repository.dart';
import 'package:flutter_e_learning/domain/question/section/value_object/section.dart';
import 'package:flutter_e_learning/infrastructure/data/local/app_database.dart';

class SectionRepositoryImpl implements SectionRepository {
  final AppDatabase _database;
  SectionRepositoryImpl({required AppDatabase database}) : _database = database;

  @override
  Future<List<Section>> getSections() async {
    final sectionMaps = await _database.query('sections');
    return sectionMaps
        .map(
          (s) => Section(
            id: s['id'] as String,
            title: s['title'] as String,
            description: s['description'] as String?,
          ),
        )
        .toList();
  }

  @override
  Future<Section?> getSection(String sectionId) async {
    final sections = await _database.query(
      'sections',
      where: 'id = ?',
      whereArgs: [sectionId],
    );
    if (sections.isNotEmpty) {
      final s = sections.first;
      return Section(
        id: s['id'] as String,
        title: s['title'] as String,
        description: s['description'] as String?,
      );
    }
    return null;
  }

  @override
  Future<void> updateSections(List<Section> sections) async {
    await _database.deleteAll('sections');
    for (final s in sections) {
      await _database.insert('sections', {
        'id': s.id,
        'title': s.title,
        'description': s.description,
      });
    }
  }
}
