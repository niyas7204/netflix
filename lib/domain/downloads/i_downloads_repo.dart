import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failure/common_failures.dart';

import 'package:netflix/domain/downloads/models/downloads.dart';

abstract class IDowloadsRepo {
  Future<Either<MainFalure, List<Downloads>>> getDownloadsImage();
}
