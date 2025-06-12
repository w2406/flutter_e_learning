import 'package:flutter_e_learning/domain/question/section/repository/section_repository.dart';
import 'package:flutter_e_learning/domain/question/section/value_object/section.dart';

class GetSectionsUseCase {
  final SectionRepository sectionRepository;

  GetSectionsUseCase(this.sectionRepository);

  Future<List<Section>> execute() async {
    return await sectionRepository.getSections();
  }
}
