import 'package:freezed_annotation/freezed_annotation.dart';

part 'notebook_entity.freezed.dart';

@freezed
abstract class NotebookEntity with _$NotebookEntity {
  const factory NotebookEntity({
    required String id,
    required String name,
    String? parentId,
  }) = _NotebookEntity;
}
