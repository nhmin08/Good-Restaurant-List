import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:good_restaurant_list/presentation/screen/restaurant_list/restaurant_list_screen.dart';
import 'package:good_restaurant_list/presentation/screen/splash/splash_screen.dart';
import 'package:good_restaurant_list/router/route_helper.dart';
import 'package:good_restaurant_list/router/route_observer.dart';
import 'package:good_restaurant_list/router/route_path_constant.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(Ref ref) {
  final RedirectHelper redirectHelper = RedirectHelper();
  final GoRouter goRouter = GoRouter(
    observers: [RouterObserver(ref)],
    initialLocation: '/${RoutePathConstants.restaurantList}',
    initialExtra: false,
    redirect: (context, state) async {
      return redirectHelper.redirect(context: context, state: state, ref: ref);
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/${RoutePathConstants.splash}',
        name: RoutePathConstants.splash,
        builder: (BuildContext context, GoRouterState state) => SplashScreen(),
      ),
      GoRoute(
        path: '/${RoutePathConstants.restaurantList}',
        name: RoutePathConstants.restaurantList,
        builder:
            (BuildContext context, GoRouterState state) =>
                RestaurantListScreen(),
      ),
    ],
  );

  return goRouter;
}
