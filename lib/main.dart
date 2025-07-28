import 'package:flutter/material.dart';
import 'package:good_restaurant_list/environment/app_init.dart';
import 'package:good_restaurant_list/router/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  await AppInitializer.init();
  runApp(
    ProviderScope(
      //overrides: [],
      //observers: [ProviderLogger()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Good Restaurant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routerConfig: ref.watch(routerProvider),
      // 텍스트 크기를 기기의 설정에 따라 조정하지 않도록 설정
      builder:
          (context, child) => MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: _EagerInitializer(child: child!),
          ),
    );
  }
}

class _EagerInitializer extends HookConsumerWidget {
  const _EagerInitializer({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return child;
  }
}
