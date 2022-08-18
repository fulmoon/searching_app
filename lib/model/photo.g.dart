// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      previewURL: json['previewURL'] as String,
      tags: json['tags'] as String,
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'previewURL': instance.previewURL,
      'tags': instance.tags,
    };
