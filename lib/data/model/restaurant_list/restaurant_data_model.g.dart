// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantDataModel _$RestaurantDataModelFromJson(Map<String, dynamic> json) =>
    _RestaurantDataModel(
      date: json['데이터기준일자'] as String,
      remarks: json['비고'] as String,
      storeName: json['상호명'] as String,
      address: json['소재지 도로명주소'] as String,
      index: (json['연번'] as num).toInt(),
      phoneNum: json['전화번호'] as String,
    );

Map<String, dynamic> _$RestaurantDataModelToJson(
  _RestaurantDataModel instance,
) => <String, dynamic>{
  '데이터기준일자': instance.date,
  '비고': instance.remarks,
  '상호명': instance.storeName,
  '소재지 도로명주소': instance.address,
  '연번': instance.index,
  '전화번호': instance.phoneNum,
};
