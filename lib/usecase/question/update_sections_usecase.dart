import 'package:flutter_e_learning/domain/question/section/repository/section_repository.dart';
import 'package:flutter_e_learning/domain/question/section/value_object/section.dart';

class UpdateSectionsUsecase {
  final SectionRepository repository;
  UpdateSectionsUsecase({required this.repository});

  Future<void> execute(List<Section> sections) async {
    await repository.updateSections(sections);
  }
}
