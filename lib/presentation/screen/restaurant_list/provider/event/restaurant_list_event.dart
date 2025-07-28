import 'package:good_restaurant_list/presentation/screen/restaurant_list/provider/restaurant_list_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin class RestaurantListEvent {
  Future<void> getCurrentAssignment({
    required WidgetRef ref,
    required int page,
    required String serviceKey,
  }) async => await ref
      .read(restaurantListProvider.notifier)
      .fetchRestaurantData(page: page, serviceKey: serviceKey);

  Future<void> getMoreRestaurantData({
    required WidgetRef ref,
    required int page,
    required String serviceKey,
  }) async => await ref
      .read(restaurantListProvider.notifier)
      .getMoreRestaurantData(page: page, serviceKey: serviceKey);
}
