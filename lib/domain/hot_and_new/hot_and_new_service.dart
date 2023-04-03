import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failure/common_failures.dart';
import 'package:netflix/domain/hot_and_new/disover/disover.dart';

abstract class HotAndNewService {
  Future<Either<MainFalure, HotndNewResp>> getHotAndNewMovieData();
  Future<Either<MainFalure, HotndNewResp>> getHotAndNewTvData();
}
