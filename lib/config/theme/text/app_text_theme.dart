import 'package:flutter/material.dart';

import 'IAppTextTheme.dart';

class AppTextTheme extends IAppTextTheme {
  @override
  TextTheme get textTheme {
    return const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
      headline1: TextStyle(),
      headline2: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.normal,
      ),
      headline3: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
      headline5: TextStyle(
        fontSize: 18.5,
        fontWeight: FontWeight.normal,
      ),
      headline6: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      subtitle1: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
      subtitle2: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
