import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failure/common_failures.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/presantarion/fast_Laughs.dart/fast_laugh.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDowloadsRepo dowloadsRepo;
  DownloadsBloc(this.dowloadsRepo) : super(DownloadsState.initial()) {
    on<_getDownloadsImage>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, dowloadsFailureorSuccessOption: none()));
      final Either<MainFalure, List<Downloads>> downloadOption =
          await dowloadsRepo.getDownloadsImage();

      emit(downloadOption.fold(
          (failure) => state.copyWith(
                isLoading: false,
                dowloadsFailureorSuccessOption: Some(
                  left(failure),
                ),
              ), (success) {
        return state.copyWith(
            isLoading: false,
            downloads: success,
            dowloadsFailureorSuccessOption: Some(right(success)));
      }));
    });
  }
}
