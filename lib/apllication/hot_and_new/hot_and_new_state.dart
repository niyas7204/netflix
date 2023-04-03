part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required final List<HotAndNewResult> comingSoonlist,
    required final List<HotAndNewResult> everyOneisWatchinglist,
    required bool isLoading,
    required bool isError,
  }) = _Initial;
  factory HotAndNewState.initial() => const HotAndNewState(
      comingSoonlist: [],
      everyOneisWatchinglist: [],
      isError: false,
      isLoading: false);
}
