import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    @JsonKey(name: 'id') @Default(0) int? id,
    @JsonKey(name: 'title') @Default('') String? title,
    @JsonKey(name: 'vote_average') @Default(0) double? rating,
    @JsonKey(name: 'overview') @Default('') String? overview,
    @JsonKey(name: 'release_date') @Default('') String? releaseDate,
    @JsonKey(name: 'poster_path') @Default('') String? poster,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  factory Movie.fromFirestore(DocumentSnapshot<Map<String, Object?>> document) {
    final data = document.data();
    data!['id'] = document.id;

    return Movie.fromJson(data);
  }
}
