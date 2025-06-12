import 'package:flutter_e_learning/domain/question/section/repository/section_repository.dart';
import 'package:flutter_e_learning/domain/question/section/value_object/section.dart';

class SectionRepositoryImpl implements SectionRepository {
  @override
  Future<List<Section>> getSections() async {
    return [
      Section(id: '1', title: 'Dart基礎', description: 'Dart言語の基本文法を学ぶセクション'),
      Section(id: '2', title: 'Flutter入門', description: 'Flutterの基本を学ぶセクション'),
    ];
  }
}
