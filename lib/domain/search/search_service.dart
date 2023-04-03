import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failure/common_failures.dart';
import 'package:netflix/domain/search/models/search.dart';

abstract class SearchService {
  Future<Either<MainFalure, SearchResponse>> searchMovies({
    required String movieQuary,
  });
}
//verified
