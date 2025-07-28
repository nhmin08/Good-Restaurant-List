import 'package:good_restaurant_list/data/model/restaurant_list/restaurant_list_response_model.dart';
import 'package:good_restaurant_list/data/repository/restaurant_list_repository_impl.dart';
import 'package:good_restaurant_list/domain/entity/restaurant_list/restaurant_list_response_entity.dart';
import 'package:good_restaurant_list/domain/repository/restaurant_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'restaurant_list_usecase.g.dart';

@riverpod
RestaurantListUseCase restaurantListUseCaseState(Ref ref) {
  final RestaurantListRepository repository = ref.watch(
    restaurantListRepositoryImplStateProvider,
  );
  return RestaurantListUseCase(restaurantListRepository: repository);
}

class RestaurantListUseCase {
  RestaurantListUseCase({required this.restaurantListRepository});

  final RestaurantListRepository restaurantListRepository;

  Future<RestaurantListResponseEntity> fetchRestaurantData({
    required int page,
    required String serviceKey,
  }) async {
    try {
      final RestaurantListResponseModel result = await restaurantListRepository
          .fetchRestaurantData(page: page, serviceKey: serviceKey);

      return RestaurantListResponseEntity.fromJson(result.toJson());
    } catch (e) {
      rethrow;
    }
  }
}
