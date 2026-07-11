import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_entity.freezed.dart';

@freezed
sealed class SourceEntity with _$SourceEntity {
  const factory SourceEntity.pdf({
    required String id,
    required String notebookId,
    required String name,
    required String uri,
    required String sha256,
  }) = PdfSourceEntity;

  const factory SourceEntity.text({
    required String id,
    required String notebookId,
    required String name,
    required String content,
  }) = TextSourceEntity;
}
