import 'package:flutter/material.dart';
import 'IAppTheme.dart';

import '../colors/app_colors.dart';
import '../text/IAppTextTheme.dart';

class RedTheme extends IAppTheme {
  RedTheme({required IAppTextTheme appTextTheme}) : super(appTextTheme);

  @override
  ThemeData get themeData {
    const ColorScheme _colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.redStop,
      onPrimary: Colors.white,
      secondary: AppColors.orangePink,
      onSecondary: Colors.white,
      background: AppColors.orangePink,
      onBackground: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.orangePink,
      onSurface: Colors.white,
    );

    var _themeData = ThemeData(
        colorScheme: _colorScheme,
        textTheme: appTextTheme.textTheme,
        scaffoldBackgroundColor: AppColors.orangePink,
        canvasColor: AppColors.orangePink,
        dialogBackgroundColor: AppColors.orangePink,
        iconTheme: const IconThemeData(color: Colors.white));

    return _themeData;
  }
}
