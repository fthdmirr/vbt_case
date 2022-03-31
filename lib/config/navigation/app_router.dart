import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vbt_case/constants/navigation_constants.dart';
import 'package:vbt_case/helpers/countdown/countdown.dart';
import 'package:vbt_case/helpers/widgets/page_not_found_widget.dart';
import 'package:vbt_case/presentation/game/view/game_view.dart';
import 'package:vbt_case/presentation/home/home_view.dart';

import '../../presentation/game/cubit/game_cubit.dart';
import 'app_router_impl.dart';

class AppRouter implements IAppRouter {
  @override
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationConstants.home:
        return MaterialPageRoute(builder: (context) => const HomeView());

      case NavigationConstants.game:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => GameCubit(countDown: CountDown(15)),
                child: const GameView()));

      default:
        return MaterialPageRoute(builder: (context) => const PageNotFound());
    }
  }
}
