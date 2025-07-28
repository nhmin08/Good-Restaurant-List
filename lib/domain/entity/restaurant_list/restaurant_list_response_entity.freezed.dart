// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_list_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantListResponseEntity {

 int get page; int get perPage; int get totalCount; int get currentCount; int get matchCount; List<RestaurantDataEntity> get data;
/// Create a copy of RestaurantListResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantListResponseEntityCopyWith<RestaurantListResponseEntity> get copyWith => _$RestaurantListResponseEntityCopyWithImpl<RestaurantListResponseEntity>(this as RestaurantListResponseEntity, _$identity);

  /// Serializes this RestaurantListResponseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantListResponseEntity&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.matchCount, matchCount) || other.matchCount == matchCount)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,totalCount,currentCount,matchCount,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'RestaurantListResponseEntity(page: $page, perPage: $perPage, totalCount: $totalCount, currentCount: $currentCount, matchCount: $matchCount, data: $data)';
}


}

/// @nodoc
abstract mixin class $RestaurantListResponseEntityCopyWith<$Res>  {
  factory $RestaurantListResponseEntityCopyWith(RestaurantListResponseEntity value, $Res Function(RestaurantListResponseEntity) _then) = _$RestaurantListResponseEntityCopyWithImpl;
@useResult
$Res call({
 int page, int perPage, int totalCount, int currentCount, int matchCount, List<RestaurantDataEntity> data
});




}
/// @nodoc
class _$RestaurantListResponseEntityCopyWithImpl<$Res>
    implements $RestaurantListResponseEntityCopyWith<$Res> {
  _$RestaurantListResponseEntityCopyWithImpl(this._self, this._then);

  final RestaurantListResponseEntity _self;
  final $Res Function(RestaurantListResponseEntity) _then;

/// Create a copy of RestaurantListResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? perPage = null,Object? totalCount = null,Object? currentCount = null,Object? matchCount = null,Object? data = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,matchCount: null == matchCount ? _self.matchCount : matchCount // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<RestaurantDataEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [RestaurantListResponseEntity].
extension RestaurantListResponseEntityPatterns on RestaurantListResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantListResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantListResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantListResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantListResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantListResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantListResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int perPage,  int totalCount,  int currentCount,  int matchCount,  List<RestaurantDataEntity> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantListResponseEntity() when $default != null:
return $default(_that.page,_that.perPage,_that.totalCount,_that.currentCount,_that.matchCount,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int perPage,  int totalCount,  int currentCount,  int matchCount,  List<RestaurantDataEntity> data)  $default,) {final _that = this;
switch (_that) {
case _RestaurantListResponseEntity():
return $default(_that.page,_that.perPage,_that.totalCount,_that.currentCount,_that.matchCount,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int perPage,  int totalCount,  int currentCount,  int matchCount,  List<RestaurantDataEntity> data)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantListResponseEntity() when $default != null:
return $default(_that.page,_that.perPage,_that.totalCount,_that.currentCount,_that.matchCount,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantListResponseEntity implements RestaurantListResponseEntity {
  const _RestaurantListResponseEntity({required this.page, required this.perPage, required this.totalCount, required this.currentCount, required this.matchCount, required final  List<RestaurantDataEntity> data}): _data = data;
  factory _RestaurantListResponseEntity.fromJson(Map<String, dynamic> json) => _$RestaurantListResponseEntityFromJson(json);

@override final  int page;
@override final  int perPage;
@override final  int totalCount;
@override final  int currentCount;
@override final  int matchCount;
 final  List<RestaurantDataEntity> _data;
@override List<RestaurantDataEntity> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of RestaurantListResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantListResponseEntityCopyWith<_RestaurantListResponseEntity> get copyWith => __$RestaurantListResponseEntityCopyWithImpl<_RestaurantListResponseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantListResponseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantListResponseEntity&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.matchCount, matchCount) || other.matchCount == matchCount)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,totalCount,currentCount,matchCount,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'RestaurantListResponseEntity(page: $page, perPage: $perPage, totalCount: $totalCount, currentCount: $currentCount, matchCount: $matchCount, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RestaurantListResponseEntityCopyWith<$Res> implements $RestaurantListResponseEntityCopyWith<$Res> {
  factory _$RestaurantListResponseEntityCopyWith(_RestaurantListResponseEntity value, $Res Function(_RestaurantListResponseEntity) _then) = __$RestaurantListResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 int page, int perPage, int totalCount, int currentCount, int matchCount, List<RestaurantDataEntity> data
});




}
/// @nodoc
class __$RestaurantListResponseEntityCopyWithImpl<$Res>
    implements _$RestaurantListResponseEntityCopyWith<$Res> {
  __$RestaurantListResponseEntityCopyWithImpl(this._self, this._then);

  final _RestaurantListResponseEntity _self;
  final $Res Function(_RestaurantListResponseEntity) _then;

/// Create a copy of RestaurantListResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,Object? totalCount = null,Object? currentCount = null,Object? matchCount = null,Object? data = null,}) {
  return _then(_RestaurantListResponseEntity(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,matchCount: null == matchCount ? _self.matchCount : matchCount // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<RestaurantDataEntity>,
  ));
}


}

// dart format on
