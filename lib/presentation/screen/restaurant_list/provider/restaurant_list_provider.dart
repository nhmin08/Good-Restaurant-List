import 'package:good_restaurant_list/core/util/logger.dart';
import 'package:good_restaurant_list/domain/entity/restaurant_list/restaurant_data_entity.dart';
import 'package:good_restaurant_list/domain/entity/restaurant_list/restaurant_list_response_entity.dart';
import 'package:good_restaurant_list/domain/use_case/restaurant_list_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'restaurant_list_provider.g.dart';

@riverpod
class RestaurantList extends _$RestaurantList {
  @override
  AsyncValue<List<RestaurantDataEntity>> build() {
    return const AsyncLoading();
  }

  /// 페이지 진입 시 식당 정보를 불러옴
  Future<void> fetchRestaurantData({
    RestaurantListUseCase? restaurantListUseCase, //test code 용
    required int page,
    required String serviceKey,
  }) async {
    final RestaurantListUseCase useCase =
        restaurantListUseCase ?? ref.read(restaurantListUseCaseStateProvider);

    try {
      final RestaurantListResponseEntity response = await useCase
          .fetchRestaurantData(page: page, serviceKey: serviceKey);

      state = AsyncData(response.data);
    } catch (e) {
      rethrow;
    }
  }

  /// 식당 정보를 추가로 가져옴
  Future<void> getMoreRestaurantData({
    RestaurantListUseCase? restaurantListUseCase, //test code 용
    required int page,
    required String serviceKey,
  }) async {
    final RestaurantListUseCase useCase =
        restaurantListUseCase ?? ref.read(restaurantListUseCaseStateProvider);

    try {
      final RestaurantListResponseEntity response = await useCase
          .fetchRestaurantData(page: page, serviceKey: serviceKey);

      if (response.data == []) {
        return;
      }

      final List<RestaurantDataEntity> currentList = List.from(state.value!)
        ..addAll(response.data);

      state = AsyncData(currentList);
    } catch (e) {
      rethrow;
    }
  }

  List<RestaurantDataEntity> getRestaurantListData() {
    //if (state.asData == null) return;

    final List<RestaurantDataEntity> data = state.asData!.value;

    return data;
  }
}
