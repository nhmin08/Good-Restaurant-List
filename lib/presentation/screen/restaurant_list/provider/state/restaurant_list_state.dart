import 'package:good_restaurant_list/domain/entity/restaurant_list/restaurant_data_entity.dart';
import 'package:good_restaurant_list/presentation/screen/restaurant_list/provider/restaurant_list_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin class RestaurantListState {
  List<RestaurantDataEntity> restaurantsData({required WidgetRef ref}) =>
      ref.watch(restaurantListProvider.notifier).getRestaurantListData();
}
