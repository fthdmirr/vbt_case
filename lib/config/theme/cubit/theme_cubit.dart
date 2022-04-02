import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../app_theme/app_theme.dart';
import '../text/app_text_theme.dart';

part 'theme_state.dart';


class ThemeCubit extends Cubit<ThemeEnum> {
  ThemeCubit() : super(ThemeEnum.greenTheme);

  static final _greenTheme =
      GreenTheme(appTextTheme: AppTextTheme(Colors.white));
  final _redTheme = RedTheme(appTextTheme: AppTextTheme(Colors.white));

  ThemeData _currentTheme = _greenTheme.themeData;
  ThemeData get currentTheme => _currentTheme;

  changeTheme() {
    if (state == ThemeEnum.greenTheme) {
      _currentTheme = _redTheme.themeData;
      emit(ThemeEnum.redTheme);
    } else {
      _currentTheme = _greenTheme.themeData;
      emit(ThemeEnum.greenTheme);
    }
  }
}
