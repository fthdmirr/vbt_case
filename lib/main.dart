import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbt_case/config/theme/cubit/theme_cubit.dart';

import 'app.dart';
import 'config/navigation/app_router.dart';

void main() async {
  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: App(
        appRouter: AppRouter()
      ),
    ),
  );
}
