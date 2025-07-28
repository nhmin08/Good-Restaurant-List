import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_data_model.g.dart';
part 'restaurant_data_model.freezed.dart';

@freezed
abstract class RestaurantDataModel with _$RestaurantDataModel {
  const factory RestaurantDataModel({
    @JsonKey(name: '데이터기준일자') required String date,
    @JsonKey(name: '비고') required String remarks,
    @JsonKey(name: '상호명') required String storeName,
    @JsonKey(name: '소재지 도로명주소') required String address,
    @JsonKey(name: '연번') required int index,
    @JsonKey(name: '전화번호') required String phoneNum,
  }) = _RestaurantDataModel;

  factory RestaurantDataModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDataModelFromJson(json);
}
