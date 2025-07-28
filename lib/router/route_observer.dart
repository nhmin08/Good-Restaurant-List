import 'package:flutter/material.dart';
import 'package:good_restaurant_list/core/util/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouterObserver extends NavigatorObserver {
  final Ref ref;

  RouterObserver(this.ref);

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.d(
      'Route Push: ${route.settings.name}, arguments: ${route.settings.arguments}, previousRoute: ${previousRoute?.settings.name}',
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.d(
      'Route Pop: ${route.settings.name}, previousRoute: ${previousRoute?.settings.name}',
    );
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.d(
      'Route Remove: ${route.settings.name}, previousRoute: ${previousRoute?.settings.name}',
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    logger.d(
      'Route Replace: ${newRoute?.settings.name}, previousRoute: ${oldRoute?.settings.name}',
    );
  }
}
