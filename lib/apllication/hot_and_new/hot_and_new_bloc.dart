import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/core/failure/common_failures.dart';
import 'package:netflix/domain/hot_and_new/disover/disover.dart';
import 'package:netflix/domain/hot_and_new/hot_and_new_service.dart';
import 'package:injectable/injectable.dart';
part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewService _hotAndNewService;
  HotAndNewBloc(this._hotAndNewService) : super(HotAndNewState.initial()) {
    on<_LoadComingSoon>((event, emit) async {
      emit(HotAndNewState(
          comingSoonlist: state.comingSoonlist,
          everyOneisWatchinglist: state.everyOneisWatchinglist,
          isLoading: true,
          isError: false));

      final result = await _hotAndNewService.getHotAndNewMovieData();
      final newState = result.fold(
        (l) => const HotAndNewState(
            comingSoonlist: [],
            everyOneisWatchinglist: [],
            isLoading: false,
            isError: true),
        (r) => HotAndNewState(
            comingSoonlist: r.results,
            everyOneisWatchinglist: state.everyOneisWatchinglist,
            isLoading: false,
            isError: false),
      );
      emit(newState);
    });
    on<_EveryOneWatchingSoon>((event, emit) async {
      emit(HotAndNewState(
          comingSoonlist: state.comingSoonlist,
          everyOneisWatchinglist: state.everyOneisWatchinglist,
          isLoading: true,
          isError: false));
      final result = await _hotAndNewService.getHotAndNewTvData();
      final newState = result.fold(
        (l) => const HotAndNewState(
            comingSoonlist: [],
            everyOneisWatchinglist: [],
            isLoading: false,
            isError: true),
        (r) => HotAndNewState(
            comingSoonlist: state.comingSoonlist,
            everyOneisWatchinglist: r.results,
            isLoading: false,
            isError: false),
      );
      emit(newState);
    });
  }
}
