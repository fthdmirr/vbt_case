import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../../../config/theme/cubit/theme_cubit.dart';

import '../../../helpers/dummy/dummy_strings.dart';
import '../../../helpers/dummy/dummy_users.dart';
import '../../../helpers/extensions/context_extensions.dart';
import '../../../helpers/widgets/custom_alert_dialog.dart';
import '../../../helpers/widgets/custom_image_asset.dart';
import '../../../helpers/widgets/custom_image_title_widget.dart';
import '../model/user_model.dart';
import '../view_model/drop_down_provider/drop_down_provider.dart';
import '../view_model/game_cubit/game_cubit.dart';

part './subView/user_image_name_text_column_widget.dart';
part './subView/user_score_text_widget.dart';
part 'subView/drop_down_icon_button_widget.dart';
part 'subView/info_icon_button_widget.dart';
part 'subView/timer_text.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: context.dynamicHeight(14),
          flexibleSpace: _appBarWidgets(context),
        ),
      ),
    );
  }

  Widget _appBarWidgets(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InfoIconButtonWidget(content: DummyStrings.instance.veryLongString),
        UserImageAndNameTextColumnWidget(user: DummyUsers.instance.user1),
        UserScoreTextWidget(user: DummyUsers.instance.user1),
        context.lowSizedBoxWidth,
        BlocConsumer<GameCubit, GameState>(
          listener: (context, state) {
            if (state.duration == 5) {
              context.read<ThemeCubit>().changeTheme();
            }
          },
          builder: (context, state) {
            return TimerText(duration: state.duration);
          },
        ),
        context.lowSizedBoxWidth,
        UserScoreTextWidget(user: DummyUsers.instance.user2),
        UserImageAndNameTextColumnWidget(user: DummyUsers.instance.user2),
        Consumer<DropDownProvider>(
            builder: (context, viewModel, child) =>
                DropDownIconButtonWidget(viewModel: viewModel))
      ],
    );
  }
}
