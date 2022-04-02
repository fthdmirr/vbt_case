import 'package:flutter/material.dart';

abstract class IAppTextTheme {
  TextTheme get textTheme;
  final Color textColor;
  IAppTextTheme(this.textColor);
}
