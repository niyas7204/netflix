import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/hot_and_new/disover/disover.dart';
import 'package:netflix/domain/core/failure/common_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/hot_and_new/hot_and_new_service.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewImplinetation implements HotAndNewService {
  @override
  Future<Either<MainFalure, HotndNewResp>> getHotAndNewMovieData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.hotAndnewMovie);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotndNewResp.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFalure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFalure.clientFailure());
    }
  }

  @override
  Future<Either<MainFalure, HotndNewResp>> getHotAndNewTvData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.hotAndnewTv);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotndNewResp.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFalure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFalure.clientFailure());
    }
  }
}
