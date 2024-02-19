// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyListResponse _$MyListResponseFromJson(Map<String, dynamic> json) {
  return _MyListResponse.fromJson(json);
}

/// @nodoc
mixin _$MyListResponse {
  List<ListEntity>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyListResponseCopyWith<MyListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyListResponseCopyWith<$Res> {
  factory $MyListResponseCopyWith(
          MyListResponse value, $Res Function(MyListResponse) then) =
      _$MyListResponseCopyWithImpl<$Res, MyListResponse>;
  @useResult
  $Res call({List<ListEntity>? data});
}

/// @nodoc
class _$MyListResponseCopyWithImpl<$Res, $Val extends MyListResponse>
    implements $MyListResponseCopyWith<$Res> {
  _$MyListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ListEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyListResponseImplCopyWith<$Res>
    implements $MyListResponseCopyWith<$Res> {
  factory _$$MyListResponseImplCopyWith(_$MyListResponseImpl value,
          $Res Function(_$MyListResponseImpl) then) =
      __$$MyListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ListEntity>? data});
}

/// @nodoc
class __$$MyListResponseImplCopyWithImpl<$Res>
    extends _$MyListResponseCopyWithImpl<$Res, _$MyListResponseImpl>
    implements _$$MyListResponseImplCopyWith<$Res> {
  __$$MyListResponseImplCopyWithImpl(
      _$MyListResponseImpl _value, $Res Function(_$MyListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$MyListResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ListEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyListResponseImpl implements _MyListResponse {
  const _$MyListResponseImpl({required final List<ListEntity>? data})
      : _data = data;

  factory _$MyListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyListResponseImplFromJson(json);

  final List<ListEntity>? _data;
  @override
  List<ListEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyListResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyListResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyListResponseImplCopyWith<_$MyListResponseImpl> get copyWith =>
      __$$MyListResponseImplCopyWithImpl<_$MyListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyListResponseImplToJson(
      this,
    );
  }
}

abstract class _MyListResponse implements MyListResponse {
  const factory _MyListResponse({required final List<ListEntity>? data}) =
      _$MyListResponseImpl;

  factory _MyListResponse.fromJson(Map<String, dynamic> json) =
      _$MyListResponseImpl.fromJson;

  @override
  List<ListEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$MyListResponseImplCopyWith<_$MyListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListEntity _$ListEntityFromJson(Map<String, dynamic> json) {
  return _ListEntity.fromJson(json);
}

/// @nodoc
mixin _$ListEntity {
  int get albumId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListEntityCopyWith<ListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListEntityCopyWith<$Res> {
  factory $ListEntityCopyWith(
          ListEntity value, $Res Function(ListEntity) then) =
      _$ListEntityCopyWithImpl<$Res, ListEntity>;
  @useResult
  $Res call(
      {int albumId, int id, String title, String url, String thumbnailUrl});
}

/// @nodoc
class _$ListEntityCopyWithImpl<$Res, $Val extends ListEntity>
    implements $ListEntityCopyWith<$Res> {
  _$ListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = null,
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListEntityImplCopyWith<$Res>
    implements $ListEntityCopyWith<$Res> {
  factory _$$ListEntityImplCopyWith(
          _$ListEntityImpl value, $Res Function(_$ListEntityImpl) then) =
      __$$ListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int albumId, int id, String title, String url, String thumbnailUrl});
}

/// @nodoc
class __$$ListEntityImplCopyWithImpl<$Res>
    extends _$ListEntityCopyWithImpl<$Res, _$ListEntityImpl>
    implements _$$ListEntityImplCopyWith<$Res> {
  __$$ListEntityImplCopyWithImpl(
      _$ListEntityImpl _value, $Res Function(_$ListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = null,
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$ListEntityImpl(
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListEntityImpl implements _ListEntity {
  const _$ListEntityImpl(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory _$ListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListEntityImplFromJson(json);

  @override
  final int albumId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String url;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'ListEntity(albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListEntityImpl &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, albumId, id, title, url, thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListEntityImplCopyWith<_$ListEntityImpl> get copyWith =>
      __$$ListEntityImplCopyWithImpl<_$ListEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListEntityImplToJson(
      this,
    );
  }
}

abstract class _ListEntity implements ListEntity {
  const factory _ListEntity(
      {required final int albumId,
      required final int id,
      required final String title,
      required final String url,
      required final String thumbnailUrl}) = _$ListEntityImpl;

  factory _ListEntity.fromJson(Map<String, dynamic> json) =
      _$ListEntityImpl.fromJson;

  @override
  int get albumId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get url;
  @override
  String get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$ListEntityImplCopyWith<_$ListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListRequest _$ListRequestFromJson(Map<String, dynamic> json) {
  return _ListRequest.fromJson(json);
}

/// @nodoc
mixin _$ListRequest {
  int get pageNo => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListRequestCopyWith<ListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListRequestCopyWith<$Res> {
  factory $ListRequestCopyWith(
          ListRequest value, $Res Function(ListRequest) then) =
      _$ListRequestCopyWithImpl<$Res, ListRequest>;
  @useResult
  $Res call({int pageNo, int pageSize});
}

/// @nodoc
class _$ListRequestCopyWithImpl<$Res, $Val extends ListRequest>
    implements $ListRequestCopyWith<$Res> {
  _$ListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListRequestImplCopyWith<$Res>
    implements $ListRequestCopyWith<$Res> {
  factory _$$ListRequestImplCopyWith(
          _$ListRequestImpl value, $Res Function(_$ListRequestImpl) then) =
      __$$ListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageNo, int pageSize});
}

/// @nodoc
class __$$ListRequestImplCopyWithImpl<$Res>
    extends _$ListRequestCopyWithImpl<$Res, _$ListRequestImpl>
    implements _$$ListRequestImplCopyWith<$Res> {
  __$$ListRequestImplCopyWithImpl(
      _$ListRequestImpl _value, $Res Function(_$ListRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = null,
    Object? pageSize = null,
  }) {
    return _then(_$ListRequestImpl(
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListRequestImpl implements _ListRequest {
  const _$ListRequestImpl({required this.pageNo, required this.pageSize});

  factory _$ListRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListRequestImplFromJson(json);

  @override
  final int pageNo;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'ListRequest(pageNo: $pageNo, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListRequestImpl &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pageNo, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListRequestImplCopyWith<_$ListRequestImpl> get copyWith =>
      __$$ListRequestImplCopyWithImpl<_$ListRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListRequestImplToJson(
      this,
    );
  }
}

abstract class _ListRequest implements ListRequest {
  const factory _ListRequest(
      {required final int pageNo,
      required final int pageSize}) = _$ListRequestImpl;

  factory _ListRequest.fromJson(Map<String, dynamic> json) =
      _$ListRequestImpl.fromJson;

  @override
  int get pageNo;
  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$ListRequestImplCopyWith<_$ListRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
