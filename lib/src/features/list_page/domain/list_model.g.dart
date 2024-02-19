// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyListResponseImpl _$$MyListResponseImplFromJson(Map<String, dynamic> json) =>
    _$MyListResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ListEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyListResponseImplToJson(
        _$MyListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ListEntityImpl _$$ListEntityImplFromJson(Map<String, dynamic> json) =>
    _$ListEntityImpl(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$ListEntityImplToJson(_$ListEntityImpl instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };

_$ListRequestImpl _$$ListRequestImplFromJson(Map<String, dynamic> json) =>
    _$ListRequestImpl(
      pageNo: json['pageNo'] as int,
      pageSize: json['pageSize'] as int,
    );

Map<String, dynamic> _$$ListRequestImplToJson(_$ListRequestImpl instance) =>
    <String, dynamic>{
      'pageNo': instance.pageNo,
      'pageSize': instance.pageSize,
    };
