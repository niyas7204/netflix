part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads> downloads,
    required Option<Either<MainFalure, List<Downloads>>>
        dowloadsFailureorSuccessOption,
  }) = _DownloadsState;
  factory DownloadsState.initial() {
    return DownloadsState(
        isLoading: false,
        dowloadsFailureorSuccessOption: none(),
        downloads: []);
  }
}
