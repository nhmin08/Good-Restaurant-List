import 'package:debounce_throttle/debounce_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:good_restaurant_list/core/constant/api_constant.dart';
import 'package:good_restaurant_list/presentation/screen/restaurant_list/provider/event/restaurant_list_event.dart';
import 'package:good_restaurant_list/presentation/screen/restaurant_list/provider/restaurant_list_provider.dart';
import 'package:good_restaurant_list/presentation/screen/restaurant_list/provider/state/restaurant_list_state.dart';
import 'package:good_restaurant_list/presentation/widget/base/base_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RestaurantListScreen extends BaseScreen
    with RestaurantListEvent, RestaurantListState {
  const RestaurantListScreen({super.key});
  @override
  Widget buildScreen(BuildContext context, WidgetRef ref) {
    final ValueNotifier<int> currentPage = useState(1);
    final ValueNotifier<bool> isLoading = useState(false);
    final ScrollController controller = useScrollController();

    final Throttle throttle = Throttle(
      Duration(seconds: 3),
      initialValue: null,
      checkEquality: false,
    );

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await getCurrentAssignment(
          ref: ref,
          page: 1,
          serviceKey: ApiConstant.serviceKey,
        );

        // 페이지네이션
        throttle.values.listen((_) async {
          // TODO: list가 비어있는 값이 온다면 currentPage가 증가하지 않도록 수정해야함
          currentPage.value++;
          await getMoreRestaurantData(
            ref: ref,
            page: currentPage.value,
            serviceKey: ApiConstant.serviceKey,
          );
          isLoading.value = false;
        });
      });

      // listView 스크롤 컨트롤러 listner
      controller.addListener(() {
        if (controller.position.pixels == controller.position.maxScrollExtent) {
          isLoading.value = true;
          throttle.setValue(null);
        }
      });

      return null;
    }, []);

    return ref
        .watch(restaurantListProvider)
        .when(
          data: (restaurantList) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        controller: controller,
                        itemCount: restaurantsData(ref: ref).length,
                        itemBuilder: (context, count) {
                          return Card(
                            color: Colors.white70,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10,
                                children: [
                                  Text(restaurantsData(ref: ref)[count].date),
                                  Text(
                                    restaurantsData(ref: ref)[count].storeName,
                                  ),
                                  Text(
                                    restaurantsData(ref: ref)[count].address,
                                  ),
                                  Text(
                                    restaurantsData(ref: ref)[count].phoneNum,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    isLoading.value
                        ? Center(child: CircularProgressIndicator())
                        : SizedBox.shrink(),
                  ],
                ),
              ),
            );
          },
          error: (error, stackTrace) {
            return Text('error');
          },
          loading: () => Center(child: CircularProgressIndicator()),
        );
  }
}
