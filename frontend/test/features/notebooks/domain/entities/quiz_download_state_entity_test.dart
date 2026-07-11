import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/features/notebooks/domain/entities/quiz_download_state_entity.dart';

void main() {
  group('QuizDownloadStateEntity', () {
    test('resolves to notDownloaded without a downloaded revision', () {
      final QuizDownloadStateEntity state = QuizDownloadStateEntity.resolve(
        currentRevision: 3,
      );

      expect(state, const QuizDownloadStateEntity.notDownloaded());
    });

    test('resolves to downloaded when revisions are equal', () {
      final QuizDownloadStateEntity state = QuizDownloadStateEntity.resolve(
        currentRevision: 3,
        downloadedRevision: 3,
      );

      expect(
        state,
        const QuizDownloadStateEntity.downloaded(downloadedRevision: 3),
      );
    });

    test('resolves to updateAvailable when the catalog is newer', () {
      final QuizDownloadStateEntity state = QuizDownloadStateEntity.resolve(
        currentRevision: 4,
        downloadedRevision: 3,
      );

      expect(
        state,
        const QuizDownloadStateEntity.updateAvailable(
          currentRevision: 4,
          downloadedRevision: 3,
        ),
      );
    });

    test('resolves to downloaded when the catalog is stale', () {
      final QuizDownloadStateEntity state = QuizDownloadStateEntity.resolve(
        currentRevision: 2,
        downloadedRevision: 3,
      );

      expect(
        state,
        const QuizDownloadStateEntity.downloaded(downloadedRevision: 3),
      );
    });
  });
}
