// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantDataModel {

@JsonKey(name: '데이터기준일자') String get date;@JsonKey(name: '비고') String get remarks;@JsonKey(name: '상호명') String get storeName;@JsonKey(name: '소재지 도로명주소') String get address;@JsonKey(name: '연번') int get index;@JsonKey(name: '전화번호') String get phoneNum;
/// Create a copy of RestaurantDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantDataModelCopyWith<RestaurantDataModel> get copyWith => _$RestaurantDataModelCopyWithImpl<RestaurantDataModel>(this as RestaurantDataModel, _$identity);

  /// Serializes this RestaurantDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantDataModel&&(identical(other.date, date) || other.date == date)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.address, address) || other.address == address)&&(identical(other.index, index) || other.index == index)&&(identical(other.phoneNum, phoneNum) || other.phoneNum == phoneNum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,remarks,storeName,address,index,phoneNum);

@override
String toString() {
  return 'RestaurantDataModel(date: $date, remarks: $remarks, storeName: $storeName, address: $address, index: $index, phoneNum: $phoneNum)';
}


}

/// @nodoc
abstract mixin class $RestaurantDataModelCopyWith<$Res>  {
  factory $RestaurantDataModelCopyWith(RestaurantDataModel value, $Res Function(RestaurantDataModel) _then) = _$RestaurantDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '데이터기준일자') String date,@JsonKey(name: '비고') String remarks,@JsonKey(name: '상호명') String storeName,@JsonKey(name: '소재지 도로명주소') String address,@JsonKey(name: '연번') int index,@JsonKey(name: '전화번호') String phoneNum
});




}
/// @nodoc
class _$RestaurantDataModelCopyWithImpl<$Res>
    implements $RestaurantDataModelCopyWith<$Res> {
  _$RestaurantDataModelCopyWithImpl(this._self, this._then);

  final RestaurantDataModel _self;
  final $Res Function(RestaurantDataModel) _then;

/// Create a copy of RestaurantDataModel
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


/// Adds pattern-matching-related methods to [RestaurantDataModel].
extension RestaurantDataModelPatterns on RestaurantDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantDataModel value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantDataModel() when $default != null:
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
case _RestaurantDataModel() when $default != null:
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
case _RestaurantDataModel():
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
case _RestaurantDataModel() when $default != null:
return $default(_that.date,_that.remarks,_that.storeName,_that.address,_that.index,_that.phoneNum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantDataModel implements RestaurantDataModel {
  const _RestaurantDataModel({@JsonKey(name: '데이터기준일자') required this.date, @JsonKey(name: '비고') required this.remarks, @JsonKey(name: '상호명') required this.storeName, @JsonKey(name: '소재지 도로명주소') required this.address, @JsonKey(name: '연번') required this.index, @JsonKey(name: '전화번호') required this.phoneNum});
  factory _RestaurantDataModel.fromJson(Map<String, dynamic> json) => _$RestaurantDataModelFromJson(json);

@override@JsonKey(name: '데이터기준일자') final  String date;
@override@JsonKey(name: '비고') final  String remarks;
@override@JsonKey(name: '상호명') final  String storeName;
@override@JsonKey(name: '소재지 도로명주소') final  String address;
@override@JsonKey(name: '연번') final  int index;
@override@JsonKey(name: '전화번호') final  String phoneNum;

/// Create a copy of RestaurantDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantDataModelCopyWith<_RestaurantDataModel> get copyWith => __$RestaurantDataModelCopyWithImpl<_RestaurantDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantDataModel&&(identical(other.date, date) || other.date == date)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.address, address) || other.address == address)&&(identical(other.index, index) || other.index == index)&&(identical(other.phoneNum, phoneNum) || other.phoneNum == phoneNum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,remarks,storeName,address,index,phoneNum);

@override
String toString() {
  return 'RestaurantDataModel(date: $date, remarks: $remarks, storeName: $storeName, address: $address, index: $index, phoneNum: $phoneNum)';
}


}

/// @nodoc
abstract mixin class _$RestaurantDataModelCopyWith<$Res> implements $RestaurantDataModelCopyWith<$Res> {
  factory _$RestaurantDataModelCopyWith(_RestaurantDataModel value, $Res Function(_RestaurantDataModel) _then) = __$RestaurantDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '데이터기준일자') String date,@JsonKey(name: '비고') String remarks,@JsonKey(name: '상호명') String storeName,@JsonKey(name: '소재지 도로명주소') String address,@JsonKey(name: '연번') int index,@JsonKey(name: '전화번호') String phoneNum
});




}
/// @nodoc
class __$RestaurantDataModelCopyWithImpl<$Res>
    implements _$RestaurantDataModelCopyWith<$Res> {
  __$RestaurantDataModelCopyWithImpl(this._self, this._then);

  final _RestaurantDataModel _self;
  final $Res Function(_RestaurantDataModel) _then;

/// Create a copy of RestaurantDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? remarks = null,Object? storeName = null,Object? address = null,Object? index = null,Object? phoneNum = null,}) {
  return _then(_RestaurantDataModel(
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
