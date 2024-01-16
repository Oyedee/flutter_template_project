// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorImpl<T> _$$ApiErrorImplFromJson<T>(Map<String, dynamic> json) =>
    _$ApiErrorImpl<T>(
      message: json['response_description'] as String,
      code: json['response_code'] as String?,
      errors: json['errors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ApiErrorImplToJson<T>(_$ApiErrorImpl<T> instance) =>
    <String, dynamic>{
      'response_description': instance.message,
      'response_code': instance.code,
      'errors': instance.errors,
    };
