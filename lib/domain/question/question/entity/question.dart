import 'package:freezed_annotation/freezed_annotation.dart';

import '../../section/value_object/section.dart';
import '../value_object/id.dart';
import 'choice.dart';
import 'choices.dart';

part '../../../../generated/domain/question/question/entity/question.freezed.dart';
part '../../../../generated/domain/question/question/entity/question.g.dart';

@freezed
sealed class Question with _$Question {
  const factory Question.choice({
    @IdConverter() required Id id,
    required String title,
    required String questionText,
    required Section section,
    @ChoicesConverter() required Choices choices,
  }) = ChoiceQuestion;

  const factory Question.code({
    @IdConverter() required Id id,
    required String title,
    required String questionText,
    required Section section,
  }) = CodeQuestion;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

// TODO: 問題ファイルの読み込み用のDTOを作ったら移動させる
class IdConverter implements JsonConverter<Id, Object> {
  const IdConverter();
  @override
  Id fromJson(Object json) {
    if (json is String) {
      return Id(value: json);
    }
    if (json is Map<String, dynamic> && json['value'] is String) {
      return Id(value: json['value'] as String);
    }
    throw Exception('Invalid Id json: $json');
  }

  @override
  String toJson(Id object) => object.value;
}

class ChoicesConverter implements JsonConverter<Choices, Object> {
  const ChoicesConverter();
  @override
  Choices fromJson(Object json) {
    if (json is List) {
      // [{label:..., isCorrect:...}, ...] 形式
      return Choices(
        values: json
            .map((e) => Choice.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    } else if (json is Map<String, dynamic> && json['values'] is List) {
      // 旧形式対応
      return Choices.fromJson(json);
    }
    throw Exception('Invalid Choices json: $json');
  }

  @override
  List<Map<String, dynamic>> toJson(Choices object) =>
      object.values.map((e) => e.toJson()).toList();
}
