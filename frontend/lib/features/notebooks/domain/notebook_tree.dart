import 'package:frontend/features/notebooks/domain/entities/notebook_entity.dart';
import 'package:frontend/features/notebooks/domain/entities/source_entity.dart';

class NotebookTree {
  final Map<String, NotebookEntity> _notebooksById = {};
  final Map<String?, List<String>> _childIdsByParentId = {};
  final Map<String, List<SourceEntity>> _sourcesByNotebookId = {};

  NotebookTree({
    required Iterable<NotebookEntity> notebooks,
    required Iterable<SourceEntity> sources,
  }) {
    for (final NotebookEntity notebook in notebooks) {
      _notebooksById[notebook.id] = notebook;

      _childIdsByParentId
          .putIfAbsent(notebook.parentId, () => [])
          .add(notebook.id);
    }

    for (final SourceEntity source in sources) {
      _sourcesByNotebookId.putIfAbsent(source.notebookId, () => []).add(source);
    }
  }

  Iterable<String> _selfAndAncestorIds(String notebookId) sync* {
    final Set<String> visited = {};
    String? currentId = notebookId;

    while (currentId != null && visited.add(currentId)) {
      yield currentId;
      currentId = _notebooksById[currentId]?.parentId;
    }
  }

  Iterable<String> _selfAndDescendantIds(String notebookId) sync* {
    final Set<String> visited = {};
    final List<String> pending = [notebookId];

    while (pending.isNotEmpty) {
      final String currentId = pending.removeLast();

      if (!visited.add(currentId)) {
        continue;
      }

      yield currentId;
      pending.addAll(_childIdsByParentId[currentId] ?? const []);
    }
  }

  List<SourceEntity> effectiveSources(String notebookId) {
    return [
      for (final String id in _selfAndAncestorIds(notebookId))
        ...?_sourcesByNotebookId[id],
    ];
  }

  List<SourceEntity> subtreeSources(String notebookId) {
    return [
      for (final String id in _selfAndDescendantIds(notebookId))
        ...?_sourcesByNotebookId[id],
    ];
  }

  int subtreeNotebookCount(String notebookId) {
    return _selfAndDescendantIds(notebookId).length - 1;
  }

  int subtreeSourceCount(String notebookId) {
    return subtreeSources(notebookId).length;
  }
}
