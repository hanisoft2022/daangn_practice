import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/common/fcm/fcm_manager.dart';
import 'package:fast_app_base/router/router/router.dart';
import 'package:fast_app_base/common/theme/etc/custom_theme_app.dart';

import 'package:flutter/material.dart';

import '../common/theme/etc/custom_theme.dart';

class App extends StatefulWidget {
  ///light, dark 테마가 준비되었고, 시스템 테마를 따라가게 하려면 해당 필드를 제거 하시면 됩니다.
  static const defaultTheme = CustomTheme.dark;
  static bool isForeground = true;
  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey();

  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    FcmManager.requestPermission();
    FcmManager.init();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomThemeApp(
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            scaffoldMessengerKey: App.scaffoldMessengerKey,
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            title: 'Image Finder',
            theme: context.themeType.themeData,
          );
        },
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // ignore: avoid_print
    print('LifeCycleState: $state');
    switch (state) {
      case AppLifecycleState.resumed:
        App.isForeground = true;
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        App.isForeground = false;
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.hidden:
        break;
    }
    super.didChangeAppLifecycleState(state);
  }
}
