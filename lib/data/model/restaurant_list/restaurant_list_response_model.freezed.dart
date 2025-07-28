// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantListResponseModel {

 int get page; int get perPage; int get totalCount; int get currentCount; int get matchCount; List<RestaurantDataModel> get data;
/// Create a copy of RestaurantListResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantListResponseModelCopyWith<RestaurantListResponseModel> get copyWith => _$RestaurantListResponseModelCopyWithImpl<RestaurantListResponseModel>(this as RestaurantListResponseModel, _$identity);

  /// Serializes this RestaurantListResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantListResponseModel&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.matchCount, matchCount) || other.matchCount == matchCount)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,totalCount,currentCount,matchCount,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'RestaurantListResponseModel(page: $page, perPage: $perPage, totalCount: $totalCount, currentCount: $currentCount, matchCount: $matchCount, data: $data)';
}


}

/// @nodoc
abstract mixin class $RestaurantListResponseModelCopyWith<$Res>  {
  factory $RestaurantListResponseModelCopyWith(RestaurantListResponseModel value, $Res Function(RestaurantListResponseModel) _then) = _$RestaurantListResponseModelCopyWithImpl;
@useResult
$Res call({
 int page, int perPage, int totalCount, int currentCount, int matchCount, List<RestaurantDataModel> data
});




}
/// @nodoc
class _$RestaurantListResponseModelCopyWithImpl<$Res>
    implements $RestaurantListResponseModelCopyWith<$Res> {
  _$RestaurantListResponseModelCopyWithImpl(this._self, this._then);

  final RestaurantListResponseModel _self;
  final $Res Function(RestaurantListResponseModel) _then;

/// Create a copy of RestaurantListResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? perPage = null,Object? totalCount = null,Object? currentCount = null,Object? matchCount = null,Object? data = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,matchCount: null == matchCount ? _self.matchCount : matchCount // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<RestaurantDataModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [RestaurantListResponseModel].
extension RestaurantListResponseModelPatterns on RestaurantListResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantListResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantListResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantListResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantListResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantListResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantListResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int perPage,  int totalCount,  int currentCount,  int matchCount,  List<RestaurantDataModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantListResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int perPage,  int totalCount,  int currentCount,  int matchCount,  List<RestaurantDataModel> data)  $default,) {final _that = this;
switch (_that) {
case _RestaurantListResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int perPage,  int totalCount,  int currentCount,  int matchCount,  List<RestaurantDataModel> data)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantListResponseModel() when $default != null:
return $default(_that.page,_that.perPage,_that.totalCount,_that.currentCount,_that.matchCount,_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _RestaurantListResponseModel implements RestaurantListResponseModel {
  const _RestaurantListResponseModel({required this.page, required this.perPage, required this.totalCount, required this.currentCount, required this.matchCount, required final  List<RestaurantDataModel> data}): _data = data;
  factory _RestaurantListResponseModel.fromJson(Map<String, dynamic> json) => _$RestaurantListResponseModelFromJson(json);

@override final  int page;
@override final  int perPage;
@override final  int totalCount;
@override final  int currentCount;
@override final  int matchCount;
 final  List<RestaurantDataModel> _data;
@override List<RestaurantDataModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of RestaurantListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantListResponseModelCopyWith<_RestaurantListResponseModel> get copyWith => __$RestaurantListResponseModelCopyWithImpl<_RestaurantListResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantListResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantListResponseModel&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.matchCount, matchCount) || other.matchCount == matchCount)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,totalCount,currentCount,matchCount,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'RestaurantListResponseModel(page: $page, perPage: $perPage, totalCount: $totalCount, currentCount: $currentCount, matchCount: $matchCount, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RestaurantListResponseModelCopyWith<$Res> implements $RestaurantListResponseModelCopyWith<$Res> {
  factory _$RestaurantListResponseModelCopyWith(_RestaurantListResponseModel value, $Res Function(_RestaurantListResponseModel) _then) = __$RestaurantListResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int page, int perPage, int totalCount, int currentCount, int matchCount, List<RestaurantDataModel> data
});




}
/// @nodoc
class __$RestaurantListResponseModelCopyWithImpl<$Res>
    implements _$RestaurantListResponseModelCopyWith<$Res> {
  __$RestaurantListResponseModelCopyWithImpl(this._self, this._then);

  final _RestaurantListResponseModel _self;
  final $Res Function(_RestaurantListResponseModel) _then;

/// Create a copy of RestaurantListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,Object? totalCount = null,Object? currentCount = null,Object? matchCount = null,Object? data = null,}) {
  return _then(_RestaurantListResponseModel(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,matchCount: null == matchCount ? _self.matchCount : matchCount // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<RestaurantDataModel>,
  ));
}


}

// dart format on
