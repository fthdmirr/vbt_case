
import 'package:flutter/material.dart';

abstract class IAppRouter {
  Route onGenerateRoute(RouteSettings settings);
}