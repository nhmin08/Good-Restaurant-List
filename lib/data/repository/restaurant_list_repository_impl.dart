import 'package:good_restaurant_list/core/util/dio/dio.dart';
import 'package:good_restaurant_list/data/data_source/restaurant_list_data_source.dart';
import 'package:good_restaurant_list/data/model/restaurant_list/restaurant_list_response_model.dart';
import 'package:good_restaurant_list/domain/repository/restaurant_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'restaurant_list_repository_impl.g.dart';

@riverpod
RestaurantListRepository restaurantListRepositoryImplState(Ref ref) {
  final dio = ref.read(dioProvider);

  final String baseUrl = 'https://api.odcloud.kr/api';

  final RestaurantListDataSource dataSource = RestaurantListDataSource(
    dio,
    baseUrl: baseUrl,
  );

  return RestaurantListRepositoryImpl(dataSource: dataSource);
}

class RestaurantListRepositoryImpl extends RestaurantListRepository {
  RestaurantListRepositoryImpl({required this.dataSource});

  final RestaurantListDataSource dataSource;

  @override
  Future<RestaurantListResponseModel> fetchRestaurantData({
    required int page,
    required String serviceKey,
  }) async {
    try {
      final RestaurantListResponseModel response = await dataSource
          .fetchRestaurantData(page: page, serviceKey: serviceKey);

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
