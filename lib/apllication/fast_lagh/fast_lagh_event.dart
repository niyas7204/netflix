part of 'fast_lagh_bloc.dart';

@freezed
class FastLaghEvent with _$FastLaghEvent {
  const factory FastLaghEvent.initialized() = _Initialized;

  const factory FastLaghEvent.likedVideos({
    required int id,
  }) = LikedVideos;
  const factory FastLaghEvent.unlikedVideos({
    required int id,
  }) = UnLikedVideos;
}
