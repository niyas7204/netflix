import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failure/common_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IDowloadsRepo)
class DownloadRepository implements IDowloadsRepo {
  @override
  Future<Either<MainFalure, List<Downloads>>> getDownloadsImage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        print(downloadsList);

        return Right(downloadsList);
      } else {
        return const Left(MainFalure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFalure.clientFailure());
    }
  }
}
