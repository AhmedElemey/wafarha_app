import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_model.freezed.dart';
part 'list_model.g.dart';

@freezed
class MyListResponse with _$MyListResponse {
  const factory MyListResponse({
    required List<ListEntity>? data,
  }) = _MyListResponse;
  factory MyListResponse.fromJson(Map<String, dynamic> json) =>
      _$MyListResponseFromJson(json);
}

@freezed
class ListEntity with _$ListEntity {
  const factory ListEntity({
    required int albumId,
    required int id,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) = _ListEntity;
  factory ListEntity.fromJson(Map<String, dynamic> json) =>
      _$ListEntityFromJson(json);
}

@freezed
class ListRequest with _$ListRequest {
  const factory ListRequest({
    required int pageNo,
    required int pageSize,
  }) = _ListRequest;
  factory ListRequest.fromJson(Map<String, dynamic> json) =>
      _$ListRequestFromJson(json);
}
