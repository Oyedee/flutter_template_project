import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

@freezed
class ApiError<T> with _$ApiError<T> {
  factory ApiError({
    @JsonKey(name: 'response_description') required String message,
    @JsonKey(name: 'response_code') String? code,
    @JsonKey(name: 'errors') Map<String, dynamic>? errors,
  }) = _ApiError<T>;

  factory ApiError.fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);
}
