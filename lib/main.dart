import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'config/navigation/app_router.dart';
import 'config/theme/cubit/theme_cubit.dart';

void main() async {
  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: DevicePreview(
        enabled: !kDebugMode,
        //enabled: !kReleaseMode,
        builder: (contex) => App(
          appRouter: AppRouter(),
        ),
      ),
    ),
  );
}
