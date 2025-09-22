// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get sizeMB => throw _privateConstructorUsedError;
  DownloadType get type => throw _privateConstructorUsedError;
  DownloadStatus get status => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;

  /// Create a copy of DownloadItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadItemCopyWith<DownloadItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadItemCopyWith<$Res> {
  factory $DownloadItemCopyWith(
          DownloadItem value, $Res Function(DownloadItem) then) =
      _$DownloadItemCopyWithImpl<$Res, DownloadItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      int sizeMB,
      DownloadType type,
      DownloadStatus status,
      double progress});
}

/// @nodoc
class _$DownloadItemCopyWithImpl<$Res, $Val extends DownloadItem>
    implements $DownloadItemCopyWith<$Res> {
  _$DownloadItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sizeMB = null,
    Object? type = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sizeMB: null == sizeMB
          ? _value.sizeMB
          : sizeMB // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DownloadType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadStatus,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadItemImplCopyWith<$Res>
    implements $DownloadItemCopyWith<$Res> {
  factory _$$DownloadItemImplCopyWith(
          _$DownloadItemImpl value, $Res Function(_$DownloadItemImpl) then) =
      __$$DownloadItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      int sizeMB,
      DownloadType type,
      DownloadStatus status,
      double progress});
}

/// @nodoc
class __$$DownloadItemImplCopyWithImpl<$Res>
    extends _$DownloadItemCopyWithImpl<$Res, _$DownloadItemImpl>
    implements _$$DownloadItemImplCopyWith<$Res> {
  __$$DownloadItemImplCopyWithImpl(
      _$DownloadItemImpl _value, $Res Function(_$DownloadItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sizeMB = null,
    Object? type = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(_$DownloadItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sizeMB: null == sizeMB
          ? _value.sizeMB
          : sizeMB // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DownloadType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadStatus,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DownloadItemImpl implements _DownloadItem {
  const _$DownloadItemImpl(
      {required this.id,
      required this.title,
      required this.sizeMB,
      required this.type,
      this.status = DownloadStatus.notStarted,
      this.progress = 0.0});

  @override
  final String id;
  @override
  final String title;
  @override
  final int sizeMB;
  @override
  final DownloadType type;
  @override
  @JsonKey()
  final DownloadStatus status;
  @override
  @JsonKey()
  final double progress;

  @override
  String toString() {
    return 'DownloadItem(id: $id, title: $title, sizeMB: $sizeMB, type: $type, status: $status, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sizeMB, sizeMB) || other.sizeMB == sizeMB) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, sizeMB, type, status, progress);

  /// Create a copy of DownloadItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadItemImplCopyWith<_$DownloadItemImpl> get copyWith =>
      __$$DownloadItemImplCopyWithImpl<_$DownloadItemImpl>(this, _$identity);
}

abstract class _DownloadItem implements DownloadItem {
  const factory _DownloadItem(
      {required final String id,
      required final String title,
      required final int sizeMB,
      required final DownloadType type,
      final DownloadStatus status,
      final double progress}) = _$DownloadItemImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  int get sizeMB;
  @override
  DownloadType get type;
  @override
  DownloadStatus get status;
  @override
  double get progress;

  /// Create a copy of DownloadItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadItemImplCopyWith<_$DownloadItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
