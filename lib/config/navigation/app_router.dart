import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../constants/navigation_constants.dart';
import '../../helpers/countdown/countdown.dart';
import '../../helpers/widgets/page_not_found_widget.dart';
import '../../presentation/game/view/game_view.dart';
import '../../presentation/game/view_model/drop_down_provider/drop_down_provider.dart';
import '../../presentation/game/view_model/game_cubit/game_cubit.dart';
import '../../presentation/home/home_view.dart';
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
            create: (context) =>
                GameCubit(countDown: CountDown(15))..startGame(),
            child: ChangeNotifierProvider(
                create: (context) => DropDownProvider(),
                child: const GameView()),
          ),
        );
      default:
        return MaterialPageRoute(builder: (context) => const PageNotFound());
    }
  }
}
