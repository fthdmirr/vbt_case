import 'package:flutter/material.dart';
import 'package:vbt_case/config/navigation/app_router.dart';
import 'package:vbt_case/config/theme/app_theme/app_theme.dart';
import 'package:vbt_case/config/theme/text/app_text_theme.dart';

import 'app.dart';

void main() async {
  runApp(
    App(
      appRouter: AppRouter(),
      appTheme: NormalTheme(
        isDark: false,
        appTextTheme: AppTextTheme(),
      ),
    ),
  );
}
