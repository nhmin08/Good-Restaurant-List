import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:good_restaurant_list/domain/entity/restaurant_list/restaurant_data_entity.dart';

part 'restaurant_list_response_entity.g.dart';
part 'restaurant_list_response_entity.freezed.dart';

@freezed
abstract class RestaurantListResponseEntity
    with _$RestaurantListResponseEntity {
  //@JsonSerializable(explicitToJson: true)
  const factory RestaurantListResponseEntity({
    required int page,
    required int perPage,
    required int totalCount,
    required int currentCount,
    required int matchCount,
    required List<RestaurantDataEntity> data,
  }) = _RestaurantListResponseEntity;

  factory RestaurantListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$RestaurantListResponseEntityFromJson(json);
}
