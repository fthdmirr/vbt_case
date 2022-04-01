import 'package:flutter/material.dart';

import 'app.dart';
import 'config/navigation/app_router.dart';
import 'config/theme/app_theme/app_theme.dart';
import 'config/theme/text/app_text_theme.dart';

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
