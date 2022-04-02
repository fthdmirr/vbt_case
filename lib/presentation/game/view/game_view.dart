import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vbt_case/config/theme/cubit/theme_cubit.dart';

import '../../../helpers/dummy/dummy_strings.dart';
import '../../../helpers/dummy/dummy_users.dart';
import '../../../helpers/extensions/context_extensions.dart';
import '../../../helpers/widgets/custom_alert_dialog.dart';
import '../../../helpers/widgets/custom_image_asset.dart';
import '../model/user_model.dart';
import '../view_model/drop_down_provider/drop_down_provider.dart';
import '../view_model/game_cubit/game_cubit.dart';

part './subView/user_image_name_text_column_widget.dart';
part './subView/user_score_text_widget.dart';
part 'subView/drop_down_icon_button_widget.dart';
part 'subView/timer_text.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: _infoIconButtonLeadingWidget(context),
          actions: [
            Consumer<DropDownProvider>(
                builder: (context, viewModel, child) =>
                    DropDownIconButtonWidget(viewModel: viewModel))
          ],
          toolbarHeight: context.dynamicHeight(14),
          flexibleSpace: _flexibleSpaceTimerAndUserWidgets(context),
        ),
      ),
    );
  }

  IconButton _infoIconButtonLeadingWidget(BuildContext context) {
    return IconButton(
      onPressed: () => showDialog(
          context: context,
          builder: (context) => CustomAlertDialog(
              title: 'Info', content: DummyStrings.instance.veryLongString)),
      icon: const Icon(Icons.info),
      iconSize: context.dynamicHeight(3.25),
    );
  }

  Widget _flexibleSpaceTimerAndUserWidgets(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.dynamicHeight(6)),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _UserImageAndNameTextColumnWidget(user: DummyUsers.instance.user1),
            _UserScoreTextWidget(user: DummyUsers.instance.user1),
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
            _UserScoreTextWidget(user: DummyUsers.instance.user2),
            _UserImageAndNameTextColumnWidget(user: DummyUsers.instance.user2),
          ],
        ),
      ),
    );
  }
}
