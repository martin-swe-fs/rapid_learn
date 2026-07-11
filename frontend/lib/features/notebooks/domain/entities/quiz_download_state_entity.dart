import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_download_state_entity.freezed.dart';

@freezed
sealed class QuizDownloadStateEntity with _$QuizDownloadStateEntity {
  const QuizDownloadStateEntity._();

  const factory QuizDownloadStateEntity.notDownloaded() = NotDownloaded;

  const factory QuizDownloadStateEntity.downloaded({
    required int downloadedRevision,
  }) = Downloaded;

  const factory QuizDownloadStateEntity.updateAvailable({
    required int currentRevision,
    required int downloadedRevision,
  }) = UpdateAvailable;

  factory QuizDownloadStateEntity.resolve({
    required int currentRevision,
    int? downloadedRevision,
  }) {
    if (downloadedRevision == null) {
      return const .notDownloaded();
    } else if (downloadedRevision < currentRevision) {
      return .updateAvailable(
        currentRevision: currentRevision,
        downloadedRevision: downloadedRevision,
      );
    } else {
      return .downloaded(downloadedRevision: downloadedRevision);
    }
  }
}
