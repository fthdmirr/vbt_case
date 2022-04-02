import 'package:flutter/material.dart';
import '../text/IAppTextTheme.dart';

abstract class IAppTheme {
  final IAppTextTheme appTextTheme;

  IAppTheme(this.appTextTheme);

  ThemeData get themeData;
}
