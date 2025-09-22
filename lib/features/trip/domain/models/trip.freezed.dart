// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  String? get id =>
      throw _privateConstructorUsedError; // allow null → so it can be omitted on insert
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  List<TripDay> get days => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary_tips')
  List<String> get summaryTips => throw _privateConstructorUsedError;

  /// Serializes this Trip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {String? id,
      String city,
      @JsonKey(name: 'start_date') DateTime startDate,
      List<TripDay> days,
      @JsonKey(name: 'summary_tips') List<String> summaryTips});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? city = null,
    Object? startDate = null,
    Object? days = null,
    Object? summaryTips = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<TripDay>,
      summaryTips: null == summaryTips
          ? _value.summaryTips
          : summaryTips // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$TripImplCopyWith(
          _$TripImpl value, $Res Function(_$TripImpl) then) =
      __$$TripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String city,
      @JsonKey(name: 'start_date') DateTime startDate,
      List<TripDay> days,
      @JsonKey(name: 'summary_tips') List<String> summaryTips});
}

/// @nodoc
class __$$TripImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$TripImpl>
    implements _$$TripImplCopyWith<$Res> {
  __$$TripImplCopyWithImpl(_$TripImpl _value, $Res Function(_$TripImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? city = null,
    Object? startDate = null,
    Object? days = null,
    Object? summaryTips = null,
  }) {
    return _then(_$TripImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<TripDay>,
      summaryTips: null == summaryTips
          ? _value._summaryTips
          : summaryTips // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripImpl implements _Trip {
  const _$TripImpl(
      {this.id,
      required this.city,
      @JsonKey(name: 'start_date') required this.startDate,
      required final List<TripDay> days,
      @JsonKey(name: 'summary_tips')
      final List<String> summaryTips = const <String>[]})
      : _days = days,
        _summaryTips = summaryTips;

  factory _$TripImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripImplFromJson(json);

  @override
  final String? id;
// allow null → so it can be omitted on insert
  @override
  final String city;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  final List<TripDay> _days;
  @override
  List<TripDay> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  final List<String> _summaryTips;
  @override
  @JsonKey(name: 'summary_tips')
  List<String> get summaryTips {
    if (_summaryTips is EqualUnmodifiableListView) return _summaryTips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_summaryTips);
  }

  @override
  String toString() {
    return 'Trip(id: $id, city: $city, startDate: $startDate, days: $days, summaryTips: $summaryTips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            const DeepCollectionEquality()
                .equals(other._summaryTips, _summaryTips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      city,
      startDate,
      const DeepCollectionEquality().hash(_days),
      const DeepCollectionEquality().hash(_summaryTips));

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      __$$TripImplCopyWithImpl<_$TripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripImplToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  const factory _Trip(
          {final String? id,
          required final String city,
          @JsonKey(name: 'start_date') required final DateTime startDate,
          required final List<TripDay> days,
          @JsonKey(name: 'summary_tips') final List<String> summaryTips}) =
      _$TripImpl;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$TripImpl.fromJson;

  @override
  String? get id; // allow null → so it can be omitted on insert
  @override
  String get city;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  List<TripDay> get days;
  @override
  @JsonKey(name: 'summary_tips')
  List<String> get summaryTips;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TripDay _$TripDayFromJson(Map<String, dynamic> json) {
  return _TripDay.fromJson(json);
}

/// @nodoc
mixin _$TripDay {
  int get day => throw _privateConstructorUsedError;
  List<TripBlock> get blocks => throw _privateConstructorUsedError;

  /// Serializes this TripDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripDayCopyWith<TripDay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDayCopyWith<$Res> {
  factory $TripDayCopyWith(TripDay value, $Res Function(TripDay) then) =
      _$TripDayCopyWithImpl<$Res, TripDay>;
  @useResult
  $Res call({int day, List<TripBlock> blocks});
}

/// @nodoc
class _$TripDayCopyWithImpl<$Res, $Val extends TripDay>
    implements $TripDayCopyWith<$Res> {
  _$TripDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? blocks = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<TripBlock>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripDayImplCopyWith<$Res> implements $TripDayCopyWith<$Res> {
  factory _$$TripDayImplCopyWith(
          _$TripDayImpl value, $Res Function(_$TripDayImpl) then) =
      __$$TripDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int day, List<TripBlock> blocks});
}

/// @nodoc
class __$$TripDayImplCopyWithImpl<$Res>
    extends _$TripDayCopyWithImpl<$Res, _$TripDayImpl>
    implements _$$TripDayImplCopyWith<$Res> {
  __$$TripDayImplCopyWithImpl(
      _$TripDayImpl _value, $Res Function(_$TripDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? blocks = null,
  }) {
    return _then(_$TripDayImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<TripBlock>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripDayImpl implements _TripDay {
  const _$TripDayImpl(
      {required this.day, final List<TripBlock> blocks = const <TripBlock>[]})
      : _blocks = blocks;

  factory _$TripDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripDayImplFromJson(json);

  @override
  final int day;
  final List<TripBlock> _blocks;
  @override
  @JsonKey()
  List<TripBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  String toString() {
    return 'TripDay(day: $day, blocks: $blocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripDayImpl &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, day, const DeepCollectionEquality().hash(_blocks));

  /// Create a copy of TripDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripDayImplCopyWith<_$TripDayImpl> get copyWith =>
      __$$TripDayImplCopyWithImpl<_$TripDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripDayImplToJson(
      this,
    );
  }
}

abstract class _TripDay implements TripDay {
  const factory _TripDay(
      {required final int day, final List<TripBlock> blocks}) = _$TripDayImpl;

  factory _TripDay.fromJson(Map<String, dynamic> json) = _$TripDayImpl.fromJson;

  @override
  int get day;
  @override
  List<TripBlock> get blocks;

  /// Create a copy of TripDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripDayImplCopyWith<_$TripDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TripBlock _$TripBlockFromJson(Map<String, dynamic> json) {
  return _TripBlock.fromJson(json);
}

/// @nodoc
mixin _$TripBlock {
  String get time => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  LatLng get coords => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError; // NEW
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_hint')
  String get budgetHint => throw _privateConstructorUsedError;
  @JsonKey(name: 'crowd_hint')
  String get crowdHint => throw _privateConstructorUsedError;
  @JsonKey(name: 'poi_id')
  String? get poiId => throw _privateConstructorUsedError;
  List<String> get sources => throw _privateConstructorUsedError;

  /// Serializes this TripBlock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripBlockCopyWith<TripBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripBlockCopyWith<$Res> {
  factory $TripBlockCopyWith(TripBlock value, $Res Function(TripBlock) then) =
      _$TripBlockCopyWithImpl<$Res, TripBlock>;
  @useResult
  $Res call(
      {String time,
      String title,
      LatLng coords,
      @JsonKey(name: 'place_id') String? placeId,
      String reason,
      @JsonKey(name: 'budget_hint') String budgetHint,
      @JsonKey(name: 'crowd_hint') String crowdHint,
      @JsonKey(name: 'poi_id') String? poiId,
      List<String> sources});

  $LatLngCopyWith<$Res> get coords;
}

/// @nodoc
class _$TripBlockCopyWithImpl<$Res, $Val extends TripBlock>
    implements $TripBlockCopyWith<$Res> {
  _$TripBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? title = null,
    Object? coords = null,
    Object? placeId = freezed,
    Object? reason = null,
    Object? budgetHint = null,
    Object? crowdHint = null,
    Object? poiId = freezed,
    Object? sources = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as LatLng,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      budgetHint: null == budgetHint
          ? _value.budgetHint
          : budgetHint // ignore: cast_nullable_to_non_nullable
              as String,
      crowdHint: null == crowdHint
          ? _value.crowdHint
          : crowdHint // ignore: cast_nullable_to_non_nullable
              as String,
      poiId: freezed == poiId
          ? _value.poiId
          : poiId // ignore: cast_nullable_to_non_nullable
              as String?,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of TripBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res> get coords {
    return $LatLngCopyWith<$Res>(_value.coords, (value) {
      return _then(_value.copyWith(coords: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripBlockImplCopyWith<$Res>
    implements $TripBlockCopyWith<$Res> {
  factory _$$TripBlockImplCopyWith(
          _$TripBlockImpl value, $Res Function(_$TripBlockImpl) then) =
      __$$TripBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      String title,
      LatLng coords,
      @JsonKey(name: 'place_id') String? placeId,
      String reason,
      @JsonKey(name: 'budget_hint') String budgetHint,
      @JsonKey(name: 'crowd_hint') String crowdHint,
      @JsonKey(name: 'poi_id') String? poiId,
      List<String> sources});

  @override
  $LatLngCopyWith<$Res> get coords;
}

/// @nodoc
class __$$TripBlockImplCopyWithImpl<$Res>
    extends _$TripBlockCopyWithImpl<$Res, _$TripBlockImpl>
    implements _$$TripBlockImplCopyWith<$Res> {
  __$$TripBlockImplCopyWithImpl(
      _$TripBlockImpl _value, $Res Function(_$TripBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? title = null,
    Object? coords = null,
    Object? placeId = freezed,
    Object? reason = null,
    Object? budgetHint = null,
    Object? crowdHint = null,
    Object? poiId = freezed,
    Object? sources = null,
  }) {
    return _then(_$TripBlockImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as LatLng,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      budgetHint: null == budgetHint
          ? _value.budgetHint
          : budgetHint // ignore: cast_nullable_to_non_nullable
              as String,
      crowdHint: null == crowdHint
          ? _value.crowdHint
          : crowdHint // ignore: cast_nullable_to_non_nullable
              as String,
      poiId: freezed == poiId
          ? _value.poiId
          : poiId // ignore: cast_nullable_to_non_nullable
              as String?,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripBlockImpl implements _TripBlock {
  const _$TripBlockImpl(
      {required this.time,
      required this.title,
      required this.coords,
      @JsonKey(name: 'place_id') this.placeId,
      this.reason = 'No details provided',
      @JsonKey(name: 'budget_hint') this.budgetHint = '',
      @JsonKey(name: 'crowd_hint') this.crowdHint = '',
      @JsonKey(name: 'poi_id') this.poiId,
      final List<String> sources = const <String>[]})
      : _sources = sources;

  factory _$TripBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripBlockImplFromJson(json);

  @override
  final String time;
  @override
  final String title;
  @override
  final LatLng coords;
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
// NEW
  @override
  @JsonKey()
  final String reason;
  @override
  @JsonKey(name: 'budget_hint')
  final String budgetHint;
  @override
  @JsonKey(name: 'crowd_hint')
  final String crowdHint;
  @override
  @JsonKey(name: 'poi_id')
  final String? poiId;
  final List<String> _sources;
  @override
  @JsonKey()
  List<String> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  String toString() {
    return 'TripBlock(time: $time, title: $title, coords: $coords, placeId: $placeId, reason: $reason, budgetHint: $budgetHint, crowdHint: $crowdHint, poiId: $poiId, sources: $sources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripBlockImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coords, coords) || other.coords == coords) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.budgetHint, budgetHint) ||
                other.budgetHint == budgetHint) &&
            (identical(other.crowdHint, crowdHint) ||
                other.crowdHint == crowdHint) &&
            (identical(other.poiId, poiId) || other.poiId == poiId) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      title,
      coords,
      placeId,
      reason,
      budgetHint,
      crowdHint,
      poiId,
      const DeepCollectionEquality().hash(_sources));

  /// Create a copy of TripBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripBlockImplCopyWith<_$TripBlockImpl> get copyWith =>
      __$$TripBlockImplCopyWithImpl<_$TripBlockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripBlockImplToJson(
      this,
    );
  }
}

abstract class _TripBlock implements TripBlock {
  const factory _TripBlock(
      {required final String time,
      required final String title,
      required final LatLng coords,
      @JsonKey(name: 'place_id') final String? placeId,
      final String reason,
      @JsonKey(name: 'budget_hint') final String budgetHint,
      @JsonKey(name: 'crowd_hint') final String crowdHint,
      @JsonKey(name: 'poi_id') final String? poiId,
      final List<String> sources}) = _$TripBlockImpl;

  factory _TripBlock.fromJson(Map<String, dynamic> json) =
      _$TripBlockImpl.fromJson;

  @override
  String get time;
  @override
  String get title;
  @override
  LatLng get coords;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId; // NEW
  @override
  String get reason;
  @override
  @JsonKey(name: 'budget_hint')
  String get budgetHint;
  @override
  @JsonKey(name: 'crowd_hint')
  String get crowdHint;
  @override
  @JsonKey(name: 'poi_id')
  String? get poiId;
  @override
  List<String> get sources;

  /// Create a copy of TripBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripBlockImplCopyWith<_$TripBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
