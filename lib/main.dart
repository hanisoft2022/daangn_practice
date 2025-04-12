import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'basic/app.dart';
import 'common/data/preference/app/app_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();

  timeago.setLocaleMessages('ko', timeago.KoMessages());

  runApp(
    ProviderScope(
      child: EasyLocalization(
          supportedLocales: const [Locale('ko')],
          fallbackLocale: const Locale('ko'),
          path: 'assets/translations',
          useOnlyLangCode: true,
          child: const App()),
    ),
  );
}
