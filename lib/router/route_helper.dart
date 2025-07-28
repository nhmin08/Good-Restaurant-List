import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:good_restaurant_list/core/util/logger.dart';
import 'package:good_restaurant_list/router/route_path_constant.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RedirectHelper {
  FutureOr<String?> redirect({
    required BuildContext context,
    required GoRouterState state,
    required Ref ref,
  }) async {
    //Network 연결 상태를 확인하여 연결이 끊어진 경우 Dialog를 띄워준다.
    if (!_isNetworkIgnoreState(context, state)) {
      final List<ConnectivityResult> connectivityResult =
          await Connectivity().checkConnectivity();
      if (connectivityResult.contains(ConnectivityResult.none)) {
        if (!context.mounted) return null;
        logger.w('Connection failed in ${state.matchedLocation}');
        // await DialogUtil.showNetworkConnectionDialog(
        //   navigatorKey.currentContext!,
        // );
        return '/${RoutePathConstants.splash}';
      }
    }
    return null;
  }

  bool _isNetworkIgnoreState(BuildContext context, GoRouterState state) {
    if (state.matchedLocation.contains(RoutePathConstants.splash)) return true;

    return false;
  }
}
