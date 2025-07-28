import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:good_restaurant_list/data/model/restaurant_list/restaurant_data_model.dart';

part 'restaurant_list_response_model.g.dart';
part 'restaurant_list_response_model.freezed.dart';

@freezed
abstract class RestaurantListResponseModel with _$RestaurantListResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory RestaurantListResponseModel({
    required int page,
    required int perPage,
    required int totalCount,
    required int currentCount,
    required int matchCount,
    required List<RestaurantDataModel> data,
  }) = _RestaurantListResponseModel;

  factory RestaurantListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantListResponseModelFromJson(json);
}
