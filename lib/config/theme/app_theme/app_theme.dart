import 'package:flutter/material.dart';
import 'IAppTheme.dart';
import '../colors/app_colors.dart';
import '../text/IAppTextTheme.dart';

class NormalTheme extends IAppTheme {
  NormalTheme({required bool isDark, required IAppTextTheme appTextTheme})
      : super(isDark, appTextTheme);

  @override
  ThemeData get themeData {
    final ColorScheme _colorScheme = ColorScheme(
      brightness: isDark ? Brightness.dark : Brightness.light,
      primary: AppColors.prunePlum,
      onPrimary: AppColors.winterCocoa,
      secondary: AppColors.cardinalMauve,
      onSecondary: AppColors.winterCocoa,
      background: AppColors.cardinalMauve,
      onBackground: AppColors.winterCocoa,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.cardinalMauve,
      onSurface: AppColors.winterCocoa,
    );

    var _themeData = ThemeData(
      colorScheme: _colorScheme,
      textTheme: appTextTheme.textTheme,
      scaffoldBackgroundColor: AppColors.frostedMintHills,
      //buttonTheme: ButtonThemeData(buttonColor: purpleClimax),
    );

    return _themeData;
  }
}
