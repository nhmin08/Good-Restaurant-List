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

  Future<bool> pagination({
    RestaurantListUseCase? restaurantListUseCase, //test code 용
    required int page,
    required String serviceKey,
    required bool fetchMore,
  }) async {
    final RestaurantListUseCase useCase =
        restaurantListUseCase ?? ref.read(restaurantListUseCaseStateProvider);

    try {
      final RestaurantListResponseEntity response = await useCase
          .fetchRestaurantData(page: page, serviceKey: serviceKey);

      if (fetchMore) {
        // 데이터 추가
        // final List<RestaurantDataEntity> currentList = List.from(state.value!)
        //   ..addAll(response.data);

        // state = AsyncData(currentList);

        state = AsyncData(
          response.copyWith(data: [...state.value!, ...response.data]).data,
        );
      } else {
        // 데이터 새로 불러오기 or refresh
        state = AsyncData(response.data);
      }

      if (response.data == [] || response.data.isEmpty) {
        return false;
      }
      return true;
    } catch (e) {
      rethrow;
    }
  }

  List<RestaurantDataEntity> getRestaurantListData() {
    final List<RestaurantDataEntity> data = state.asData!.value;

    return data;
  }
}
