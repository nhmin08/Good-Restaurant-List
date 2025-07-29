import 'package:good_restaurant_list/presentation/screen/restaurant_list/provider/restaurant_list_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin class RestaurantListEvent {
  Future<bool> pagination({
    required WidgetRef ref,
    int page = 1,
    String serviceKey =
        'SegOcO4Q18q2DKKdP9lO/ZdSfhGDnHb/SCqNzzogzP0C3V4KdHHhMuQalidYAp10Y1oa9bEHxkd1Vg2uj/hUhw==',
    bool fetchMore = false,
  }) async => ref
      .read(restaurantListProvider.notifier)
      .pagination(page: page, serviceKey: serviceKey, fetchMore: fetchMore);
}
