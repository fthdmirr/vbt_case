import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbt_case/config/theme/cubit/theme_cubit.dart';

import 'config/navigation/app_router_impl.dart';
import 'constants/app_constants.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.appRouter}) : super(key: key);

  final IAppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: context.watch<ThemeCubit>().currentTheme,
      onGenerateRoute: appRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
