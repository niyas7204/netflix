import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'fast_lagh_event.dart';
part 'fast_lagh_state.dart';
part 'fast_lagh_bloc.freezed.dart';

final videoUrl = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"
];

ValueNotifier<Set<int>> likedVideosIdNotifier = ValueNotifier({});

@injectable
class FastLaghBloc extends Bloc<FastLaghEvent, FastLaghState> {
  FastLaghBloc(
    IDowloadsRepo downloadService,
  ) : super(FastLaghState.initial()) {
    on<_Initialized>((event, emit) async {
      emit(FastLaghState(
          videoList: [],
          isLoading: true,
          isError: false,
          likedVideos: state.likedVideos));
      //get trending movies
      final result = await downloadService.getDownloadsImage();
      final rState = result.fold(
        (l) => const FastLaghState(
          videoList: [],
          isLoading: false,
          isError: true,
        ),
        (succes) => FastLaghState(
          videoList: succes,
          isLoading: false,
          isError: false,
        ),
      );
      emit(rState);
    });
    on<LikedVideos>((event, emit) async {
      likedVideosIdNotifier.value.add(event.id);
      likedVideosIdNotifier.notifyListeners();
    });

    on<UnLikedVideos>((event, emit) async {
      likedVideosIdNotifier.value.remove(event.id);
      likedVideosIdNotifier.notifyListeners();
    });
  }
}
