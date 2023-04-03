part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewEvent with _$HotAndNewEvent {
  const factory HotAndNewEvent.loadComingSoon() = _LoadComingSoon;
  const factory HotAndNewEvent.everyOneWatchingSoon() = _EveryOneWatchingSoon;
}
