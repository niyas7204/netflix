import 'package:dartz/dartz.dart';
import 'package:netflix/core/const_strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/movie/day?api_key=$apiKey";
  static const search = "$kBaseUrl/search/movie?api_key=$apiKey";
  static const hotAndnewMovie = "$kBaseUrl/discover/movie?api_key=$apiKey";
  static const hotAndnewTv = "$kBaseUrl/discover/movie?api_key=$apiKey";
}
