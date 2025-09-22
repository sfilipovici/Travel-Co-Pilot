// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ar_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AROverlay _$AROverlayFromJson(Map<String, dynamic> json) {
  return _AROverlay.fromJson(json);
}

/// @nodoc
mixin _$AROverlay {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this AROverlay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AROverlay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AROverlayCopyWith<AROverlay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AROverlayCopyWith<$Res> {
  factory $AROverlayCopyWith(AROverlay value, $Res Function(AROverlay) then) =
      _$AROverlayCopyWithImpl<$Res, AROverlay>;
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class _$AROverlayCopyWithImpl<$Res, $Val extends AROverlay>
    implements $AROverlayCopyWith<$Res> {
  _$AROverlayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AROverlay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AROverlayImplCopyWith<$Res>
    implements $AROverlayCopyWith<$Res> {
  factory _$$AROverlayImplCopyWith(
          _$AROverlayImpl value, $Res Function(_$AROverlayImpl) then) =
      __$$AROverlayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class __$$AROverlayImplCopyWithImpl<$Res>
    extends _$AROverlayCopyWithImpl<$Res, _$AROverlayImpl>
    implements _$$AROverlayImplCopyWith<$Res> {
  __$$AROverlayImplCopyWithImpl(
      _$AROverlayImpl _value, $Res Function(_$AROverlayImpl) _then)
      : super(_value, _then);

  /// Create a copy of AROverlay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$AROverlayImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AROverlayImpl implements _AROverlay {
  const _$AROverlayImpl({required this.id, this.type = 'marker'});

  factory _$AROverlayImpl.fromJson(Map<String, dynamic> json) =>
      _$$AROverlayImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'AROverlay(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AROverlayImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  /// Create a copy of AROverlay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AROverlayImplCopyWith<_$AROverlayImpl> get copyWith =>
      __$$AROverlayImplCopyWithImpl<_$AROverlayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AROverlayImplToJson(
      this,
    );
  }
}

abstract class _AROverlay implements AROverlay {
  const factory _AROverlay({required final String id, final String type}) =
      _$AROverlayImpl;

  factory _AROverlay.fromJson(Map<String, dynamic> json) =
      _$AROverlayImpl.fromJson;

  @override
  String get id;
  @override
  String get type;

  /// Create a copy of AROverlay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AROverlayImplCopyWith<_$AROverlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ARCard _$ARCardFromJson(Map<String, dynamic> json) {
  return _ARCard.fromJson(json);
}

/// @nodoc
mixin _$ARCard {
  String get arCardId => throw _privateConstructorUsedError;
  String get poiId => throw _privateConstructorUsedError;
  String get shortStory => throw _privateConstructorUsedError;
  String get audioUrl => throw _privateConstructorUsedError;
  List<AROverlay> get overlays => throw _privateConstructorUsedError;

  /// Serializes this ARCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ARCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ARCardCopyWith<ARCard> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ARCardCopyWith<$Res> {
  factory $ARCardCopyWith(ARCard value, $Res Function(ARCard) then) =
      _$ARCardCopyWithImpl<$Res, ARCard>;
  @useResult
  $Res call(
      {String arCardId,
      String poiId,
      String shortStory,
      String audioUrl,
      List<AROverlay> overlays});
}

/// @nodoc
class _$ARCardCopyWithImpl<$Res, $Val extends ARCard>
    implements $ARCardCopyWith<$Res> {
  _$ARCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ARCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arCardId = null,
    Object? poiId = null,
    Object? shortStory = null,
    Object? audioUrl = null,
    Object? overlays = null,
  }) {
    return _then(_value.copyWith(
      arCardId: null == arCardId
          ? _value.arCardId
          : arCardId // ignore: cast_nullable_to_non_nullable
              as String,
      poiId: null == poiId
          ? _value.poiId
          : poiId // ignore: cast_nullable_to_non_nullable
              as String,
      shortStory: null == shortStory
          ? _value.shortStory
          : shortStory // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      overlays: null == overlays
          ? _value.overlays
          : overlays // ignore: cast_nullable_to_non_nullable
              as List<AROverlay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ARCardImplCopyWith<$Res> implements $ARCardCopyWith<$Res> {
  factory _$$ARCardImplCopyWith(
          _$ARCardImpl value, $Res Function(_$ARCardImpl) then) =
      __$$ARCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String arCardId,
      String poiId,
      String shortStory,
      String audioUrl,
      List<AROverlay> overlays});
}

/// @nodoc
class __$$ARCardImplCopyWithImpl<$Res>
    extends _$ARCardCopyWithImpl<$Res, _$ARCardImpl>
    implements _$$ARCardImplCopyWith<$Res> {
  __$$ARCardImplCopyWithImpl(
      _$ARCardImpl _value, $Res Function(_$ARCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of ARCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arCardId = null,
    Object? poiId = null,
    Object? shortStory = null,
    Object? audioUrl = null,
    Object? overlays = null,
  }) {
    return _then(_$ARCardImpl(
      arCardId: null == arCardId
          ? _value.arCardId
          : arCardId // ignore: cast_nullable_to_non_nullable
              as String,
      poiId: null == poiId
          ? _value.poiId
          : poiId // ignore: cast_nullable_to_non_nullable
              as String,
      shortStory: null == shortStory
          ? _value.shortStory
          : shortStory // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      overlays: null == overlays
          ? _value._overlays
          : overlays // ignore: cast_nullable_to_non_nullable
              as List<AROverlay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ARCardImpl implements _ARCard {
  const _$ARCardImpl(
      {required this.arCardId,
      required this.poiId,
      required this.shortStory,
      this.audioUrl = '',
      final List<AROverlay> overlays = const <AROverlay>[]})
      : _overlays = overlays;

  factory _$ARCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ARCardImplFromJson(json);

  @override
  final String arCardId;
  @override
  final String poiId;
  @override
  final String shortStory;
  @override
  @JsonKey()
  final String audioUrl;
  final List<AROverlay> _overlays;
  @override
  @JsonKey()
  List<AROverlay> get overlays {
    if (_overlays is EqualUnmodifiableListView) return _overlays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_overlays);
  }

  @override
  String toString() {
    return 'ARCard(arCardId: $arCardId, poiId: $poiId, shortStory: $shortStory, audioUrl: $audioUrl, overlays: $overlays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ARCardImpl &&
            (identical(other.arCardId, arCardId) ||
                other.arCardId == arCardId) &&
            (identical(other.poiId, poiId) || other.poiId == poiId) &&
            (identical(other.shortStory, shortStory) ||
                other.shortStory == shortStory) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            const DeepCollectionEquality().equals(other._overlays, _overlays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arCardId, poiId, shortStory,
      audioUrl, const DeepCollectionEquality().hash(_overlays));

  /// Create a copy of ARCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ARCardImplCopyWith<_$ARCardImpl> get copyWith =>
      __$$ARCardImplCopyWithImpl<_$ARCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ARCardImplToJson(
      this,
    );
  }
}

abstract class _ARCard implements ARCard {
  const factory _ARCard(
      {required final String arCardId,
      required final String poiId,
      required final String shortStory,
      final String audioUrl,
      final List<AROverlay> overlays}) = _$ARCardImpl;

  factory _ARCard.fromJson(Map<String, dynamic> json) = _$ARCardImpl.fromJson;

  @override
  String get arCardId;
  @override
  String get poiId;
  @override
  String get shortStory;
  @override
  String get audioUrl;
  @override
  List<AROverlay> get overlays;

  /// Create a copy of ARCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ARCardImplCopyWith<_$ARCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
