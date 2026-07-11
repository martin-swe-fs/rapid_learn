import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_entity.freezed.dart';

@freezed
abstract class QuizEntity with _$QuizEntity {
  const factory QuizEntity({
    required String id,
    required String rootNotebookId,
    required String title,
    required List<String> sourceIds,
    required int revision,
    required int questionCount,
    required int subNotebookCount,
  }) = _QuizEntity;
}
