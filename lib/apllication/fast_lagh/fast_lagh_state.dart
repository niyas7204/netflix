part of 'fast_lagh_bloc.dart';

@freezed
class FastLaghState with _$FastLaghState {
  const factory FastLaghState({
    required List<Downloads> videoList,
    @Default([]) List<int> likedVideos,
    required bool isLoading,
    required bool isError,
  }) = _Initial;
  factory FastLaghState.initial() =>
      const FastLaghState(videoList: [], isLoading: true, isError: false);
}
