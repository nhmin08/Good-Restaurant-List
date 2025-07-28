import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BaseScreen extends HookConsumerWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      onInit(ref, context);
      return () => onDispose(ref, context);
    }, []);

    useOnAppLifecycleStateChange((previousState, state) async {
      // final SharedPref sharedPref = ref.read(sharedPrefServiceProvider);
      // final String currentLocation =
      //     GoRouter.of(
      //       context,
      //     ).routerDelegate.currentConfiguration.matches.last.matchedLocation;

      //logger.w('Location $currentLocation : App State Change : $state');

      switch (state) {
        case AppLifecycleState.resumed:
          onResumed(ref, context);
          break;
        case AppLifecycleState.paused:
          onPaused(ref, context);
          break;
        case AppLifecycleState.inactive:
          onInactive(ref, context);
          break;
        case AppLifecycleState.detached:
          onDetached(ref, context);
          break;
        case AppLifecycleState.hidden:
      }
    });
    return Container(
      color: baseBackgroundColor,
      child: SafeArea(
        top: setTopSafeArea,
        bottom: setBottomSafeArea,
        left: setLeftSafeArea,
        right: setRightSafeArea,
        child: PopScope(
          canPop: canPop,
          child: Scaffold(
            appBar: renderAppBar(context, ref),
            backgroundColor: baseBackgroundColor,
            resizeToAvoidBottomInset: baseResizeToAvoidBottomInset,
            body: Padding(
              padding:
                  applyBodyPadding
                      ? EdgeInsets.symmetric(horizontal: 16, vertical: 16)
                      : EdgeInsets.zero,
              child: buildScreen(context, ref),
            ),
            bottomNavigationBar: renderBottomNavigationBar(context, ref),
          ),
        ),
      ),
    );
  }

  @protected
  Widget buildScreen(BuildContext context, WidgetRef ref);

  @protected
  Color? get baseBackgroundColor => Colors.white;

  @protected
  bool get applyBodyPadding => true;

  @protected
  bool get setBottomSafeArea => false;

  @protected
  bool get setTopSafeArea => false;

  @protected
  bool get setLeftSafeArea => false;

  @protected
  bool get setRightSafeArea => false;

  @protected
  bool get canPop => false;

  @protected
  bool get baseResizeToAvoidBottomInset => true;

  @protected
  PreferredSizeWidget? renderAppBar(BuildContext context, WidgetRef ref) =>
      null;

  @protected
  Widget? renderBottomNavigationBar(BuildContext context, WidgetRef ref) =>
      null;

  /// 앱이 활성화된 상태로 돌아올 때 호출
  @protected
  void onResumed(WidgetRef ref, BuildContext context) {}

  /// 앱이 일시 정지될 때 호출
  @protected
  void onPaused(WidgetRef ref, BuildContext context) {}

  /// 앱이 비활성 상태로 전환될 때 호출
  @protected
  void onInactive(WidgetRef ref, BuildContext context) {}

  /// 앱이 분리되었을 때 호출
  @protected
  void onDetached(WidgetRef ref, BuildContext context) {}

  /// 페이지 초기화 시 호출
  @protected
  void onInit(WidgetRef ref, BuildContext context) {}

  /// 페이지 해제 시 호출
  @protected
  void onDispose(WidgetRef ref, BuildContext context) {}

  /// will pop시
  @protected
  void onScreenPop(WidgetRef ref, BuildContext context) {}
}
