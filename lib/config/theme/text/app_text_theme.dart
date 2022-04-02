import 'package:flutter/material.dart';

import 'IAppTextTheme.dart';

class AppTextTheme extends IAppTextTheme {
  AppTextTheme(Color textColor) : super(textColor);

  @override
  TextTheme get textTheme {
    return TextTheme(
      bodyText1: TextStyle(color: textColor),
      bodyText2: TextStyle(color: textColor),
      headline1: TextStyle(color: textColor),
      headline2: TextStyle(
        color: textColor,
        fontSize: 35,
        fontWeight: FontWeight.normal,
      ),
      headline3: TextStyle(
        color: textColor,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
      headline5: TextStyle(
        color: textColor,
        fontSize: 18.5,
        fontWeight: FontWeight.normal,
      ),
      headline6: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      subtitle1: TextStyle(
        color: textColor,
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
      subtitle2: TextStyle(
        color: textColor,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
