import 'package:flutter/material.dart';
import '../text/IAppTextTheme.dart';


abstract class IAppTheme {
 
  final bool isDark;

  final IAppTextTheme appTextTheme;

  IAppTheme(this.isDark, this.appTextTheme);

  ThemeData get themeData;
}
