import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_data_entity.g.dart';
part 'restaurant_data_entity.freezed.dart';

@freezed
abstract class RestaurantDataEntity with _$RestaurantDataEntity {
  const factory RestaurantDataEntity({
    @JsonKey(name: '데이터기준일자') required String date,
    @JsonKey(name: '비고') required String remarks,
    @JsonKey(name: '상호명') required String storeName,
    @JsonKey(name: '소재지 도로명주소') required String address,
    @JsonKey(name: '연번') required int index,
    @JsonKey(name: '전화번호') required String phoneNum,
  }) = _RestaurantDataEntity;

  factory RestaurantDataEntity.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDataEntityFromJson(json);
}
