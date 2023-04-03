import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failure/common_failures.dart';
import 'package:netflix/domain/search/models/search.dart';
import 'package:netflix/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFalure, SearchResponse>> searchMovies(
      {required String movieQuary}) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.search, queryParameters: {
        'query': movieQuary,
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponse.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFalure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFalure.clientFailure());
    }
  }
}
