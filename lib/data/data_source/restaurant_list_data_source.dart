import 'package:dio/dio.dart' hide Headers;
import 'package:good_restaurant_list/data/model/restaurant_list/restaurant_list_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'restaurant_list_data_source.g.dart';

@RestApi()
abstract class RestaurantListDataSource {
  factory RestaurantListDataSource(Dio dio, {String baseUrl}) =
      _RestaurantListDataSource;

  @GET('/3082925/v1/uddi:413dc7da-3025-4d8b-9d40-80c32821deac')
  //@Headers({'Authorization': 'true', 'page': 1, 'perPage': 10})
  //@Headers({'page': 1, 'perPage': 10})
  Future<RestaurantListResponseModel> fetchRestaurantData({
    @Query('page') required int page,
    @Query('serviceKey') required String serviceKey,
  });
}
