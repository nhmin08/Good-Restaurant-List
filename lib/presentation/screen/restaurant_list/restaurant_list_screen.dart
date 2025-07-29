import 'package:debounce_throttle/debounce_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
    final ValueNotifier<bool> isLast = useState(false);
    final ScrollController controller = useScrollController();

    final Throttle throttle = Throttle(
      Duration(seconds: 3),
      initialValue: null,
      checkEquality: false,
    );

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await pagination(ref: ref);
      });

      final throttleListener = throttle.values.listen((_) async {
        final bool hasNextData = await pagination(
          ref: ref,
          page: currentPage.value + 1,
          fetchMore: true,
        );
        if (hasNextData) {
          currentPage.value++;
        } else {
          isLast.value = true;
        }
      });

      // listView 스크롤 컨트롤러 listener
      controller.addListener(() {
        if (controller.position.pixels == controller.position.maxScrollExtent) {
          throttle.setValue(null);
        }
      });

      return () => throttleListener.cancel();
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
                Text('광주 맛집 리스트', textAlign: TextAlign.center),
                const SizedBox(height: 16),
                Expanded(
                  child: RefreshIndicator(
                    child: ListView.builder(
                      controller: controller,
                      itemCount: restaurantsData(ref: ref).length + 1,
                      itemBuilder: (context, index) {
                        if (index == restaurantsData(ref: ref).length) {
                          return Center(
                            child:
                            isLast.value
                                ? Text('마지막 데이터 입니다.')
                                : CircularProgressIndicator(
                              padding: EdgeInsets.all(8),
                            ),
                          );
                        }

                        return Card(
                          color: Colors.white70,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                Text(restaurantsData(ref: ref)[index].date),
                                Text(
                                  restaurantsData(
                                    ref: ref,
                                  )[index].storeName,
                                ),
                                Text(
                                  restaurantsData(ref: ref)[index].address,
                                ),
                                Text(
                                  restaurantsData(ref: ref)[index].phoneNum,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    onRefresh: () async {
                      isLast.value = false;
                      currentPage.value = 1;
                      await pagination(ref: ref);
                    },
                  ),
                ),
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
