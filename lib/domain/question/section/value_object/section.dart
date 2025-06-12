import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/question/section/value_object/section.freezed.dart';

@freezed
abstract class Section with _$Section {
  const factory Section({
    required String id,
    required String title,
    String? description,
  }) = _Section;
}
