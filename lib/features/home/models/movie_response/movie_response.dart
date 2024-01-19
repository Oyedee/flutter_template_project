import 'package:freezed_annotation/freezed_annotation.dart';

import '../movie/movie.dart';

part 'movie_response.freezed.dart';
part 'movie_response.g.dart';

@freezed
class MovieResponse with _$MovieResponse {
  factory MovieResponse({
    @JsonKey(name: 'results') @Default(<Movie>[]) List<Movie>? movies,
    @JsonKey(name: 'page') @Default(0) int? page,
    @JsonKey(name: 'total_pages') @Default(0) int? totalPages,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) => _$MovieResponseFromJson(json);
}
