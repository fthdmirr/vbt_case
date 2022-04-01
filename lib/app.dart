import 'package:flutter/material.dart';
import 'config/navigation/app_router_impl.dart';
import 'config/theme/app_theme/IAppTheme.dart';

import 'constants/app_constants.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.appRouter, required this.appTheme})
      : super(key: key);

  final IAppRouter appRouter;
  final IAppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: appTheme.themeData,
      onGenerateRoute: appRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
