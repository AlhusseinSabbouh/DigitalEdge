// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestFormData _$RequestFormDataFromJson(Map<String, dynamic> json) =>
    RequestFormData(
      json['key'] as String?,
      json['value'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$RequestFormDataToJson(RequestFormData instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'type': instance.type,
    };
