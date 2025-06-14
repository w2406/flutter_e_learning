import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/question/section/value_object/section.freezed.dart';
part '../../../../generated/domain/question/section/value_object/section.g.dart';

@freezed
abstract class Section with _$Section {
  const factory Section({
    required String id,
    required String title,
    String? description,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}
