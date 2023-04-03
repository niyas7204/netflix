import 'package:json_annotation/json_annotation.dart';

part 'disover.g.dart';

@JsonSerializable()
class HotndNewResp {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'results')
  List<HotAndNewResult> results;

  HotndNewResp({
    this.page,
    this.results = const [],
  });

  factory HotndNewResp.fromJson(Map<String, dynamic> json) {
    return _$HotndNewRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotndNewRespToJson(this);
}

@JsonSerializable()
class HotAndNewResult {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;

  HotAndNewResult({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory HotAndNewResult.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewResultToJson(this);
}
