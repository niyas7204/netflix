import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failure/common_failures.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/domain/search/models/search.dart';
import 'package:netflix/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDowloadsRepo downloadsService;
  final SearchService searchService;
  SearchBloc(this.searchService, this.downloadsService)
      : super(SearchState.initial()) {
//idle state
    on<_initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
            searchResultList: [],
            idleList: state.idleList,
            isloading: false,
            isError: false));
        return;
      }
      emit(const SearchState(
          searchResultList: [], idleList: [], isloading: true, isError: false));
      final result = await downloadsService.getDownloadsImage();
      final eventState = result.fold((failure) {
        return const SearchState(
            searchResultList: [],
            idleList: [],
            isloading: false,
            isError: true);
      }, (resultlist) {
        return SearchState(
            searchResultList: [],
            idleList: resultlist,
            isloading: false,
            isError: false);
      });
      emit(eventState);
    });
//search result state
    on<_searchMovie>((event, emit) async {
      emit(const SearchState(
          searchResultList: [], idleList: [], isloading: true, isError: false));

      final result =
          await searchService.searchMovies(movieQuary: event.movieQuery);
      final resultState = result.fold((failure) {
        return const SearchState(
            searchResultList: [],
            idleList: [],
            isloading: false,
            isError: true);
      }, (succes) {
        return SearchState(
            searchResultList: succes.searchResults,
            idleList: [],
            isloading: false,
            isError: false);
      });

      emit(resultState);
    });
  }
}
