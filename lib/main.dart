import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'basic/app.dart';
import 'common/data/preference/app/app_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ko')],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      useOnlyLangCode: true,
      child: const App(),
    ),
  );
}
