import 'package:flutter_e_learning/domain/question/section/value_object/section.dart';

abstract class SectionRepository {
  Future<List<Section>> getSections();
  Future<Section?> getSection(String sectionId);
  Future<void> updateSections(List<Section> sections);
}
