// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Trip {

 String get id;@JsonKey(name: 'user_id') String get userId; String get city;@JsonKey(name: 'start_date') DateTime? get startDate;@JsonKey(name: 'end_date') DateTime? get endDate;@JsonKey(name: 'days') List<TripDay> get days;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'categories') List<String> get categories;@JsonKey(name: 'budget_amount') int? get budgetAmount; String? get currency;
/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripCopyWith<Trip> get copyWith => _$TripCopyWithImpl<Trip>(this as Trip, _$identity);

  /// Serializes this Trip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Trip&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.city, city) || other.city == city)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.budgetAmount, budgetAmount) || other.budgetAmount == budgetAmount)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,city,startDate,endDate,const DeepCollectionEquality().hash(days),isActive,const DeepCollectionEquality().hash(categories),budgetAmount,currency);

@override
String toString() {
  return 'Trip(id: $id, userId: $userId, city: $city, startDate: $startDate, endDate: $endDate, days: $days, isActive: $isActive, categories: $categories, budgetAmount: $budgetAmount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $TripCopyWith<$Res>  {
  factory $TripCopyWith(Trip value, $Res Function(Trip) _then) = _$TripCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'user_id') String userId, String city,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'days') List<TripDay> days,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'categories') List<String> categories,@JsonKey(name: 'budget_amount') int? budgetAmount, String? currency
});




}
/// @nodoc
class _$TripCopyWithImpl<$Res>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._self, this._then);

  final Trip _self;
  final $Res Function(Trip) _then;

/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? city = null,Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? isActive = null,Object? categories = null,Object? budgetAmount = freezed,Object? currency = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<TripDay>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,budgetAmount: freezed == budgetAmount ? _self.budgetAmount : budgetAmount // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Trip].
extension TripPatterns on Trip {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Trip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Trip() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Trip value)  $default,){
final _that = this;
switch (_that) {
case _Trip():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Trip value)?  $default,){
final _that = this;
switch (_that) {
case _Trip() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'user_id')  String userId,  String city, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'days')  List<TripDay> days, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'categories')  List<String> categories, @JsonKey(name: 'budget_amount')  int? budgetAmount,  String? currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Trip() when $default != null:
return $default(_that.id,_that.userId,_that.city,_that.startDate,_that.endDate,_that.days,_that.isActive,_that.categories,_that.budgetAmount,_that.currency);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'user_id')  String userId,  String city, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'days')  List<TripDay> days, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'categories')  List<String> categories, @JsonKey(name: 'budget_amount')  int? budgetAmount,  String? currency)  $default,) {final _that = this;
switch (_that) {
case _Trip():
return $default(_that.id,_that.userId,_that.city,_that.startDate,_that.endDate,_that.days,_that.isActive,_that.categories,_that.budgetAmount,_that.currency);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'user_id')  String userId,  String city, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'days')  List<TripDay> days, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'categories')  List<String> categories, @JsonKey(name: 'budget_amount')  int? budgetAmount,  String? currency)?  $default,) {final _that = this;
switch (_that) {
case _Trip() when $default != null:
return $default(_that.id,_that.userId,_that.city,_that.startDate,_that.endDate,_that.days,_that.isActive,_that.categories,_that.budgetAmount,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Trip implements Trip {
  const _Trip({required this.id, @JsonKey(name: 'user_id') required this.userId, required this.city, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'days') required final  List<TripDay> days, @JsonKey(name: 'is_active') this.isActive = false, @JsonKey(name: 'categories') final  List<String> categories = const [], @JsonKey(name: 'budget_amount') this.budgetAmount, this.currency}): _days = days,_categories = categories;
  factory _Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

@override final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override final  String city;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
 final  List<TripDay> _days;
@override@JsonKey(name: 'days') List<TripDay> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

@override@JsonKey(name: 'is_active') final  bool isActive;
 final  List<String> _categories;
@override@JsonKey(name: 'categories') List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey(name: 'budget_amount') final  int? budgetAmount;
@override final  String? currency;

/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripCopyWith<_Trip> get copyWith => __$TripCopyWithImpl<_Trip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trip&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.city, city) || other.city == city)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.budgetAmount, budgetAmount) || other.budgetAmount == budgetAmount)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,city,startDate,endDate,const DeepCollectionEquality().hash(_days),isActive,const DeepCollectionEquality().hash(_categories),budgetAmount,currency);

@override
String toString() {
  return 'Trip(id: $id, userId: $userId, city: $city, startDate: $startDate, endDate: $endDate, days: $days, isActive: $isActive, categories: $categories, budgetAmount: $budgetAmount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$TripCopyWith(_Trip value, $Res Function(_Trip) _then) = __$TripCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'user_id') String userId, String city,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'days') List<TripDay> days,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'categories') List<String> categories,@JsonKey(name: 'budget_amount') int? budgetAmount, String? currency
});




}
/// @nodoc
class __$TripCopyWithImpl<$Res>
    implements _$TripCopyWith<$Res> {
  __$TripCopyWithImpl(this._self, this._then);

  final _Trip _self;
  final $Res Function(_Trip) _then;

/// Create a copy of Trip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? city = null,Object? startDate = freezed,Object? endDate = freezed,Object? days = null,Object? isActive = null,Object? categories = null,Object? budgetAmount = freezed,Object? currency = freezed,}) {
  return _then(_Trip(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<TripDay>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,budgetAmount: freezed == budgetAmount ? _self.budgetAmount : budgetAmount // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TripDay {

 int get day; List<TripBlock> get blocks;
/// Create a copy of TripDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripDayCopyWith<TripDay> get copyWith => _$TripDayCopyWithImpl<TripDay>(this as TripDay, _$identity);

  /// Serializes this TripDay to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripDay&&(identical(other.day, day) || other.day == day)&&const DeepCollectionEquality().equals(other.blocks, blocks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,const DeepCollectionEquality().hash(blocks));

@override
String toString() {
  return 'TripDay(day: $day, blocks: $blocks)';
}


}

/// @nodoc
abstract mixin class $TripDayCopyWith<$Res>  {
  factory $TripDayCopyWith(TripDay value, $Res Function(TripDay) _then) = _$TripDayCopyWithImpl;
@useResult
$Res call({
 int day, List<TripBlock> blocks
});




}
/// @nodoc
class _$TripDayCopyWithImpl<$Res>
    implements $TripDayCopyWith<$Res> {
  _$TripDayCopyWithImpl(this._self, this._then);

  final TripDay _self;
  final $Res Function(TripDay) _then;

/// Create a copy of TripDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? blocks = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,blocks: null == blocks ? _self.blocks : blocks // ignore: cast_nullable_to_non_nullable
as List<TripBlock>,
  ));
}

}


/// Adds pattern-matching-related methods to [TripDay].
extension TripDayPatterns on TripDay {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripDay() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripDay value)  $default,){
final _that = this;
switch (_that) {
case _TripDay():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripDay value)?  $default,){
final _that = this;
switch (_that) {
case _TripDay() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int day,  List<TripBlock> blocks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripDay() when $default != null:
return $default(_that.day,_that.blocks);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int day,  List<TripBlock> blocks)  $default,) {final _that = this;
switch (_that) {
case _TripDay():
return $default(_that.day,_that.blocks);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int day,  List<TripBlock> blocks)?  $default,) {final _that = this;
switch (_that) {
case _TripDay() when $default != null:
return $default(_that.day,_that.blocks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripDay implements TripDay {
  const _TripDay({required this.day, final  List<TripBlock> blocks = const []}): _blocks = blocks;
  factory _TripDay.fromJson(Map<String, dynamic> json) => _$TripDayFromJson(json);

@override final  int day;
 final  List<TripBlock> _blocks;
@override@JsonKey() List<TripBlock> get blocks {
  if (_blocks is EqualUnmodifiableListView) return _blocks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blocks);
}


/// Create a copy of TripDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripDayCopyWith<_TripDay> get copyWith => __$TripDayCopyWithImpl<_TripDay>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripDayToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripDay&&(identical(other.day, day) || other.day == day)&&const DeepCollectionEquality().equals(other._blocks, _blocks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,const DeepCollectionEquality().hash(_blocks));

@override
String toString() {
  return 'TripDay(day: $day, blocks: $blocks)';
}


}

/// @nodoc
abstract mixin class _$TripDayCopyWith<$Res> implements $TripDayCopyWith<$Res> {
  factory _$TripDayCopyWith(_TripDay value, $Res Function(_TripDay) _then) = __$TripDayCopyWithImpl;
@override @useResult
$Res call({
 int day, List<TripBlock> blocks
});




}
/// @nodoc
class __$TripDayCopyWithImpl<$Res>
    implements _$TripDayCopyWith<$Res> {
  __$TripDayCopyWithImpl(this._self, this._then);

  final _TripDay _self;
  final $Res Function(_TripDay) _then;

/// Create a copy of TripDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? blocks = null,}) {
  return _then(_TripDay(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,blocks: null == blocks ? _self._blocks : blocks // ignore: cast_nullable_to_non_nullable
as List<TripBlock>,
  ));
}


}


/// @nodoc
mixin _$TripBlock {

 String get title; String? get time; String? get reason;@JsonKey(name: 'place_id') String? get placeId; TripCoords? get coords; List<String> get categories; double? get rating;@JsonKey(name: 'map_url') String? get mapUrl;// ✅ Added mapUrl
@JsonKey(name: 'price_level') int? get priceLevel;@JsonKey(name: 'opening_hours') List<String>? get openingHours; String? get address;@JsonKey(name: 'crowd_hint') String? get crowdHint; List<String> get sources;
/// Create a copy of TripBlock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripBlockCopyWith<TripBlock> get copyWith => _$TripBlockCopyWithImpl<TripBlock>(this as TripBlock, _$identity);

  /// Serializes this TripBlock to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripBlock&&(identical(other.title, title) || other.title == title)&&(identical(other.time, time) || other.time == time)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.coords, coords) || other.coords == coords)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&const DeepCollectionEquality().equals(other.openingHours, openingHours)&&(identical(other.address, address) || other.address == address)&&(identical(other.crowdHint, crowdHint) || other.crowdHint == crowdHint)&&const DeepCollectionEquality().equals(other.sources, sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,time,reason,placeId,coords,const DeepCollectionEquality().hash(categories),rating,mapUrl,priceLevel,const DeepCollectionEquality().hash(openingHours),address,crowdHint,const DeepCollectionEquality().hash(sources));

@override
String toString() {
  return 'TripBlock(title: $title, time: $time, reason: $reason, placeId: $placeId, coords: $coords, categories: $categories, rating: $rating, mapUrl: $mapUrl, priceLevel: $priceLevel, openingHours: $openingHours, address: $address, crowdHint: $crowdHint, sources: $sources)';
}


}

/// @nodoc
abstract mixin class $TripBlockCopyWith<$Res>  {
  factory $TripBlockCopyWith(TripBlock value, $Res Function(TripBlock) _then) = _$TripBlockCopyWithImpl;
@useResult
$Res call({
 String title, String? time, String? reason,@JsonKey(name: 'place_id') String? placeId, TripCoords? coords, List<String> categories, double? rating,@JsonKey(name: 'map_url') String? mapUrl,@JsonKey(name: 'price_level') int? priceLevel,@JsonKey(name: 'opening_hours') List<String>? openingHours, String? address,@JsonKey(name: 'crowd_hint') String? crowdHint, List<String> sources
});


$TripCoordsCopyWith<$Res>? get coords;

}
/// @nodoc
class _$TripBlockCopyWithImpl<$Res>
    implements $TripBlockCopyWith<$Res> {
  _$TripBlockCopyWithImpl(this._self, this._then);

  final TripBlock _self;
  final $Res Function(TripBlock) _then;

/// Create a copy of TripBlock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? time = freezed,Object? reason = freezed,Object? placeId = freezed,Object? coords = freezed,Object? categories = null,Object? rating = freezed,Object? mapUrl = freezed,Object? priceLevel = freezed,Object? openingHours = freezed,Object? address = freezed,Object? crowdHint = freezed,Object? sources = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,coords: freezed == coords ? _self.coords : coords // ignore: cast_nullable_to_non_nullable
as TripCoords?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,mapUrl: freezed == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int?,openingHours: freezed == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as List<String>?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,crowdHint: freezed == crowdHint ? _self.crowdHint : crowdHint // ignore: cast_nullable_to_non_nullable
as String?,sources: null == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of TripBlock
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripCoordsCopyWith<$Res>? get coords {
    if (_self.coords == null) {
    return null;
  }

  return $TripCoordsCopyWith<$Res>(_self.coords!, (value) {
    return _then(_self.copyWith(coords: value));
  });
}
}


/// Adds pattern-matching-related methods to [TripBlock].
extension TripBlockPatterns on TripBlock {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripBlock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripBlock() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripBlock value)  $default,){
final _that = this;
switch (_that) {
case _TripBlock():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripBlock value)?  $default,){
final _that = this;
switch (_that) {
case _TripBlock() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? time,  String? reason, @JsonKey(name: 'place_id')  String? placeId,  TripCoords? coords,  List<String> categories,  double? rating, @JsonKey(name: 'map_url')  String? mapUrl, @JsonKey(name: 'price_level')  int? priceLevel, @JsonKey(name: 'opening_hours')  List<String>? openingHours,  String? address, @JsonKey(name: 'crowd_hint')  String? crowdHint,  List<String> sources)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripBlock() when $default != null:
return $default(_that.title,_that.time,_that.reason,_that.placeId,_that.coords,_that.categories,_that.rating,_that.mapUrl,_that.priceLevel,_that.openingHours,_that.address,_that.crowdHint,_that.sources);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? time,  String? reason, @JsonKey(name: 'place_id')  String? placeId,  TripCoords? coords,  List<String> categories,  double? rating, @JsonKey(name: 'map_url')  String? mapUrl, @JsonKey(name: 'price_level')  int? priceLevel, @JsonKey(name: 'opening_hours')  List<String>? openingHours,  String? address, @JsonKey(name: 'crowd_hint')  String? crowdHint,  List<String> sources)  $default,) {final _that = this;
switch (_that) {
case _TripBlock():
return $default(_that.title,_that.time,_that.reason,_that.placeId,_that.coords,_that.categories,_that.rating,_that.mapUrl,_that.priceLevel,_that.openingHours,_that.address,_that.crowdHint,_that.sources);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? time,  String? reason, @JsonKey(name: 'place_id')  String? placeId,  TripCoords? coords,  List<String> categories,  double? rating, @JsonKey(name: 'map_url')  String? mapUrl, @JsonKey(name: 'price_level')  int? priceLevel, @JsonKey(name: 'opening_hours')  List<String>? openingHours,  String? address, @JsonKey(name: 'crowd_hint')  String? crowdHint,  List<String> sources)?  $default,) {final _that = this;
switch (_that) {
case _TripBlock() when $default != null:
return $default(_that.title,_that.time,_that.reason,_that.placeId,_that.coords,_that.categories,_that.rating,_that.mapUrl,_that.priceLevel,_that.openingHours,_that.address,_that.crowdHint,_that.sources);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripBlock implements TripBlock {
  const _TripBlock({this.title = '', this.time, this.reason, @JsonKey(name: 'place_id') this.placeId, this.coords, final  List<String> categories = const [], this.rating, @JsonKey(name: 'map_url') this.mapUrl, @JsonKey(name: 'price_level') this.priceLevel, @JsonKey(name: 'opening_hours') final  List<String>? openingHours, this.address, @JsonKey(name: 'crowd_hint') this.crowdHint, final  List<String> sources = const []}): _categories = categories,_openingHours = openingHours,_sources = sources;
  factory _TripBlock.fromJson(Map<String, dynamic> json) => _$TripBlockFromJson(json);

@override@JsonKey() final  String title;
@override final  String? time;
@override final  String? reason;
@override@JsonKey(name: 'place_id') final  String? placeId;
@override final  TripCoords? coords;
 final  List<String> _categories;
@override@JsonKey() List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  double? rating;
@override@JsonKey(name: 'map_url') final  String? mapUrl;
// ✅ Added mapUrl
@override@JsonKey(name: 'price_level') final  int? priceLevel;
 final  List<String>? _openingHours;
@override@JsonKey(name: 'opening_hours') List<String>? get openingHours {
  final value = _openingHours;
  if (value == null) return null;
  if (_openingHours is EqualUnmodifiableListView) return _openingHours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? address;
@override@JsonKey(name: 'crowd_hint') final  String? crowdHint;
 final  List<String> _sources;
@override@JsonKey() List<String> get sources {
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sources);
}


/// Create a copy of TripBlock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripBlockCopyWith<_TripBlock> get copyWith => __$TripBlockCopyWithImpl<_TripBlock>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripBlockToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripBlock&&(identical(other.title, title) || other.title == title)&&(identical(other.time, time) || other.time == time)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.placeId, placeId) || other.placeId == placeId)&&(identical(other.coords, coords) || other.coords == coords)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&const DeepCollectionEquality().equals(other._openingHours, _openingHours)&&(identical(other.address, address) || other.address == address)&&(identical(other.crowdHint, crowdHint) || other.crowdHint == crowdHint)&&const DeepCollectionEquality().equals(other._sources, _sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,time,reason,placeId,coords,const DeepCollectionEquality().hash(_categories),rating,mapUrl,priceLevel,const DeepCollectionEquality().hash(_openingHours),address,crowdHint,const DeepCollectionEquality().hash(_sources));

@override
String toString() {
  return 'TripBlock(title: $title, time: $time, reason: $reason, placeId: $placeId, coords: $coords, categories: $categories, rating: $rating, mapUrl: $mapUrl, priceLevel: $priceLevel, openingHours: $openingHours, address: $address, crowdHint: $crowdHint, sources: $sources)';
}


}

/// @nodoc
abstract mixin class _$TripBlockCopyWith<$Res> implements $TripBlockCopyWith<$Res> {
  factory _$TripBlockCopyWith(_TripBlock value, $Res Function(_TripBlock) _then) = __$TripBlockCopyWithImpl;
@override @useResult
$Res call({
 String title, String? time, String? reason,@JsonKey(name: 'place_id') String? placeId, TripCoords? coords, List<String> categories, double? rating,@JsonKey(name: 'map_url') String? mapUrl,@JsonKey(name: 'price_level') int? priceLevel,@JsonKey(name: 'opening_hours') List<String>? openingHours, String? address,@JsonKey(name: 'crowd_hint') String? crowdHint, List<String> sources
});


@override $TripCoordsCopyWith<$Res>? get coords;

}
/// @nodoc
class __$TripBlockCopyWithImpl<$Res>
    implements _$TripBlockCopyWith<$Res> {
  __$TripBlockCopyWithImpl(this._self, this._then);

  final _TripBlock _self;
  final $Res Function(_TripBlock) _then;

/// Create a copy of TripBlock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? time = freezed,Object? reason = freezed,Object? placeId = freezed,Object? coords = freezed,Object? categories = null,Object? rating = freezed,Object? mapUrl = freezed,Object? priceLevel = freezed,Object? openingHours = freezed,Object? address = freezed,Object? crowdHint = freezed,Object? sources = null,}) {
  return _then(_TripBlock(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,placeId: freezed == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String?,coords: freezed == coords ? _self.coords : coords // ignore: cast_nullable_to_non_nullable
as TripCoords?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,mapUrl: freezed == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String?,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int?,openingHours: freezed == openingHours ? _self._openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as List<String>?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,crowdHint: freezed == crowdHint ? _self.crowdHint : crowdHint // ignore: cast_nullable_to_non_nullable
as String?,sources: null == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of TripBlock
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripCoordsCopyWith<$Res>? get coords {
    if (_self.coords == null) {
    return null;
  }

  return $TripCoordsCopyWith<$Res>(_self.coords!, (value) {
    return _then(_self.copyWith(coords: value));
  });
}
}


/// @nodoc
mixin _$TripCoords {

 double? get lat; double? get lng;
/// Create a copy of TripCoords
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripCoordsCopyWith<TripCoords> get copyWith => _$TripCoordsCopyWithImpl<TripCoords>(this as TripCoords, _$identity);

  /// Serializes this TripCoords to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripCoords&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'TripCoords(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $TripCoordsCopyWith<$Res>  {
  factory $TripCoordsCopyWith(TripCoords value, $Res Function(TripCoords) _then) = _$TripCoordsCopyWithImpl;
@useResult
$Res call({
 double? lat, double? lng
});




}
/// @nodoc
class _$TripCoordsCopyWithImpl<$Res>
    implements $TripCoordsCopyWith<$Res> {
  _$TripCoordsCopyWithImpl(this._self, this._then);

  final TripCoords _self;
  final $Res Function(TripCoords) _then;

/// Create a copy of TripCoords
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_self.copyWith(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [TripCoords].
extension TripCoordsPatterns on TripCoords {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripCoords value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripCoords() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripCoords value)  $default,){
final _that = this;
switch (_that) {
case _TripCoords():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripCoords value)?  $default,){
final _that = this;
switch (_that) {
case _TripCoords() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? lat,  double? lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripCoords() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? lat,  double? lng)  $default,) {final _that = this;
switch (_that) {
case _TripCoords():
return $default(_that.lat,_that.lng);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? lat,  double? lng)?  $default,) {final _that = this;
switch (_that) {
case _TripCoords() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripCoords implements TripCoords {
  const _TripCoords({this.lat, this.lng});
  factory _TripCoords.fromJson(Map<String, dynamic> json) => _$TripCoordsFromJson(json);

@override final  double? lat;
@override final  double? lng;

/// Create a copy of TripCoords
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripCoordsCopyWith<_TripCoords> get copyWith => __$TripCoordsCopyWithImpl<_TripCoords>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripCoordsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripCoords&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'TripCoords(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$TripCoordsCopyWith<$Res> implements $TripCoordsCopyWith<$Res> {
  factory _$TripCoordsCopyWith(_TripCoords value, $Res Function(_TripCoords) _then) = __$TripCoordsCopyWithImpl;
@override @useResult
$Res call({
 double? lat, double? lng
});




}
/// @nodoc
class __$TripCoordsCopyWithImpl<$Res>
    implements _$TripCoordsCopyWith<$Res> {
  __$TripCoordsCopyWithImpl(this._self, this._then);

  final _TripCoords _self;
  final $Res Function(_TripCoords) _then;

/// Create a copy of TripCoords
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_TripCoords(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
