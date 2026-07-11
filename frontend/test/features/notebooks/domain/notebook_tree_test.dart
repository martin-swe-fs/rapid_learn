import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/features/notebooks/domain/entities/notebook_entity.dart';
import 'package:frontend/features/notebooks/domain/entities/source_entity.dart';
import 'package:frontend/features/notebooks/domain/notebook_tree.dart';

const NotebookEntity physics = NotebookEntity(
  id: 'physics',
  name: 'Physics',
);

const NotebookEntity thermodynamics = NotebookEntity(
  id: 'thermodynamics',
  name: 'Thermodynamics',
  parentId: 'physics',
);

const NotebookEntity entropy = NotebookEntity(
  id: 'entropy',
  name: 'Entropy',
  parentId: 'thermodynamics',
);

const NotebookEntity chemistry = NotebookEntity(
  id: 'chemistry',
  name: 'Chemistry',
);

const SourceEntity physicsNotes = SourceEntity.text(
  id: 'physics-notes',
  notebookId: 'physics',
  name: 'Physics notes',
  content: 'physics content',
);

const SourceEntity thermoBook = SourceEntity.pdf(
  id: 'thermo-book',
  notebookId: 'thermodynamics',
  name: 'Thermodynamics book',
  uri: 'file://thermo.pdf',
  sha256: 'abc123',
);

const SourceEntity entropyNotes = SourceEntity.text(
  id: 'entropy-notes',
  notebookId: 'entropy',
  name: 'Entropy notes',
  content: 'entropy content',
);

void main() {
  group('NotebookTree', () {
    late NotebookTree tree;

    setUp(() {
      tree = NotebookTree(
        notebooks: const [physics, thermodynamics, entropy, chemistry],
        sources: const [physicsNotes, thermoBook, entropyNotes],
      );
    });

    test('computes leaf effective sources from self and ancestors', () {
      expect(
        tree.effectiveSources('entropy'),
        [entropyNotes, thermoBook, physicsNotes],
      );
    });

    test('keeps descendant sources out of effective sources', () {
      expect(
        tree.effectiveSources('thermodynamics'),
        [thermoBook, physicsNotes],
      );
    });

    test('aggregates subtree sources and counts on a branch', () {
      expect(
        tree.subtreeSources('physics'),
        containsAll([physicsNotes, thermoBook, entropyNotes]),
      );
      expect(tree.subtreeSourceCount('physics'), 3);
      expect(tree.subtreeNotebookCount('physics'), 2);
    });

    test('isolates separate roots', () {
      expect(tree.effectiveSources('chemistry'), isEmpty);
      expect(tree.subtreeSourceCount('chemistry'), 0);
      expect(tree.subtreeNotebookCount('chemistry'), 0);
    });

    test('recomputes effective sources after a parent move', () {
      final NotebookTree movedTree = NotebookTree(
        notebooks: [
          physics,
          thermodynamics.copyWith(parentId: 'chemistry'),
          entropy,
          chemistry,
        ],
        sources: const [physicsNotes, thermoBook, entropyNotes],
      );

      final List<SourceEntity> sources = movedTree.effectiveSources('entropy');

      expect(sources, [entropyNotes, thermoBook]);
      expect(sources.first, same(entropyNotes));
    });

    test('moves a notebook to the root on a null parent', () {
      final NotebookTree movedTree = NotebookTree(
        notebooks: [
          physics,
          thermodynamics.copyWith(parentId: null),
          entropy,
          chemistry,
        ],
        sources: const [physicsNotes, thermoBook, entropyNotes],
      );

      expect(movedTree.effectiveSources('entropy'), [entropyNotes, thermoBook]);
      expect(movedTree.subtreeNotebookCount('physics'), 0);
    });
  });
}
