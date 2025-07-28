// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantDataEntity {

@JsonKey(name: '데이터기준일자') String get date;@JsonKey(name: '비고') String get remarks;@JsonKey(name: '상호명') String get storeName;@JsonKey(name: '소재지 도로명주소') String get address;@JsonKey(name: '연번') int get index;@JsonKey(name: '전화번호') String get phoneNum;
/// Create a copy of RestaurantDataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantDataEntityCopyWith<RestaurantDataEntity> get copyWith => _$RestaurantDataEntityCopyWithImpl<RestaurantDataEntity>(this as RestaurantDataEntity, _$identity);

  /// Serializes this RestaurantDataEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantDataEntity&&(identical(other.date, date) || other.date == date)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.address, address) || other.address == address)&&(identical(other.index, index) || other.index == index)&&(identical(other.phoneNum, phoneNum) || other.phoneNum == phoneNum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,remarks,storeName,address,index,phoneNum);

@override
String toString() {
  return 'RestaurantDataEntity(date: $date, remarks: $remarks, storeName: $storeName, address: $address, index: $index, phoneNum: $phoneNum)';
}


}

/// @nodoc
abstract mixin class $RestaurantDataEntityCopyWith<$Res>  {
  factory $RestaurantDataEntityCopyWith(RestaurantDataEntity value, $Res Function(RestaurantDataEntity) _then) = _$RestaurantDataEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '데이터기준일자') String date,@JsonKey(name: '비고') String remarks,@JsonKey(name: '상호명') String storeName,@JsonKey(name: '소재지 도로명주소') String address,@JsonKey(name: '연번') int index,@JsonKey(name: '전화번호') String phoneNum
});




}
/// @nodoc
class _$RestaurantDataEntityCopyWithImpl<$Res>
    implements $RestaurantDataEntityCopyWith<$Res> {
  _$RestaurantDataEntityCopyWithImpl(this._self, this._then);

  final RestaurantDataEntity _self;
  final $Res Function(RestaurantDataEntity) _then;

/// Create a copy of RestaurantDataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? remarks = null,Object? storeName = null,Object? address = null,Object? index = null,Object? phoneNum = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,remarks: null == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,phoneNum: null == phoneNum ? _self.phoneNum : phoneNum // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RestaurantDataEntity].
extension RestaurantDataEntityPatterns on RestaurantDataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantDataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantDataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantDataEntity value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantDataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantDataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantDataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '데이터기준일자')  String date, @JsonKey(name: '비고')  String remarks, @JsonKey(name: '상호명')  String storeName, @JsonKey(name: '소재지 도로명주소')  String address, @JsonKey(name: '연번')  int index, @JsonKey(name: '전화번호')  String phoneNum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantDataEntity() when $default != null:
return $default(_that.date,_that.remarks,_that.storeName,_that.address,_that.index,_that.phoneNum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '데이터기준일자')  String date, @JsonKey(name: '비고')  String remarks, @JsonKey(name: '상호명')  String storeName, @JsonKey(name: '소재지 도로명주소')  String address, @JsonKey(name: '연번')  int index, @JsonKey(name: '전화번호')  String phoneNum)  $default,) {final _that = this;
switch (_that) {
case _RestaurantDataEntity():
return $default(_that.date,_that.remarks,_that.storeName,_that.address,_that.index,_that.phoneNum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '데이터기준일자')  String date, @JsonKey(name: '비고')  String remarks, @JsonKey(name: '상호명')  String storeName, @JsonKey(name: '소재지 도로명주소')  String address, @JsonKey(name: '연번')  int index, @JsonKey(name: '전화번호')  String phoneNum)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantDataEntity() when $default != null:
return $default(_that.date,_that.remarks,_that.storeName,_that.address,_that.index,_that.phoneNum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantDataEntity implements RestaurantDataEntity {
  const _RestaurantDataEntity({@JsonKey(name: '데이터기준일자') required this.date, @JsonKey(name: '비고') required this.remarks, @JsonKey(name: '상호명') required this.storeName, @JsonKey(name: '소재지 도로명주소') required this.address, @JsonKey(name: '연번') required this.index, @JsonKey(name: '전화번호') required this.phoneNum});
  factory _RestaurantDataEntity.fromJson(Map<String, dynamic> json) => _$RestaurantDataEntityFromJson(json);

@override@JsonKey(name: '데이터기준일자') final  String date;
@override@JsonKey(name: '비고') final  String remarks;
@override@JsonKey(name: '상호명') final  String storeName;
@override@JsonKey(name: '소재지 도로명주소') final  String address;
@override@JsonKey(name: '연번') final  int index;
@override@JsonKey(name: '전화번호') final  String phoneNum;

/// Create a copy of RestaurantDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantDataEntityCopyWith<_RestaurantDataEntity> get copyWith => __$RestaurantDataEntityCopyWithImpl<_RestaurantDataEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantDataEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantDataEntity&&(identical(other.date, date) || other.date == date)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.address, address) || other.address == address)&&(identical(other.index, index) || other.index == index)&&(identical(other.phoneNum, phoneNum) || other.phoneNum == phoneNum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,remarks,storeName,address,index,phoneNum);

@override
String toString() {
  return 'RestaurantDataEntity(date: $date, remarks: $remarks, storeName: $storeName, address: $address, index: $index, phoneNum: $phoneNum)';
}


}

/// @nodoc
abstract mixin class _$RestaurantDataEntityCopyWith<$Res> implements $RestaurantDataEntityCopyWith<$Res> {
  factory _$RestaurantDataEntityCopyWith(_RestaurantDataEntity value, $Res Function(_RestaurantDataEntity) _then) = __$RestaurantDataEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '데이터기준일자') String date,@JsonKey(name: '비고') String remarks,@JsonKey(name: '상호명') String storeName,@JsonKey(name: '소재지 도로명주소') String address,@JsonKey(name: '연번') int index,@JsonKey(name: '전화번호') String phoneNum
});




}
/// @nodoc
class __$RestaurantDataEntityCopyWithImpl<$Res>
    implements _$RestaurantDataEntityCopyWith<$Res> {
  __$RestaurantDataEntityCopyWithImpl(this._self, this._then);

  final _RestaurantDataEntity _self;
  final $Res Function(_RestaurantDataEntity) _then;

/// Create a copy of RestaurantDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? remarks = null,Object? storeName = null,Object? address = null,Object? index = null,Object? phoneNum = null,}) {
  return _then(_RestaurantDataEntity(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,remarks: null == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,phoneNum: null == phoneNum ? _self.phoneNum : phoneNum // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
