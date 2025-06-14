import 'package:flutter_e_learning/domain/question/section/repository/section_repository.dart';
import 'package:flutter_e_learning/domain/question/section/value_object/section.dart';

class GetSectionUsecase {
  final SectionRepository repository;
  GetSectionUsecase({required this.repository});

  Future<Section?> execute(String sectionId) async {
    final section = await repository.getSection(sectionId);
    return section;
  }
}
