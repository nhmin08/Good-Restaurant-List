import 'package:good_restaurant_list/data/model/restaurant_list/restaurant_list_response_model.dart';

abstract class RestaurantListRepository {
  Future<RestaurantListResponseModel> fetchRestaurantData({
    required int page,
    required String serviceKey,
  });
}
