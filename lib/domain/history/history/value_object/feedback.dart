import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/domain/history/history/value_object/feedback.freezed.dart';
part '../../../../generated/domain/history/history/value_object/feedback.g.dart';

@freezed
abstract class Feedback with _$Feedback {
  const factory Feedback({
    required String explanation,
    String? advice,
    String? sampleCode,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);
}
