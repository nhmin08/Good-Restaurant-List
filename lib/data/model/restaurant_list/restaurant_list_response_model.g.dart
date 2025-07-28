// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantListResponseModel _$RestaurantListResponseModelFromJson(
  Map<String, dynamic> json,
) => _RestaurantListResponseModel(
  page: (json['page'] as num).toInt(),
  perPage: (json['perPage'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
  currentCount: (json['currentCount'] as num).toInt(),
  matchCount: (json['matchCount'] as num).toInt(),
  data:
      (json['data'] as List<dynamic>)
          .map((e) => RestaurantDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$RestaurantListResponseModelToJson(
  _RestaurantListResponseModel instance,
) => <String, dynamic>{
  'page': instance.page,
  'perPage': instance.perPage,
  'totalCount': instance.totalCount,
  'currentCount': instance.currentCount,
  'matchCount': instance.matchCount,
  'data': instance.data.map((e) => e.toJson()).toList(),
};
