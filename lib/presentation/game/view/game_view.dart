import 'package:flutter/material.dart';
import 'package:vbt_case/helpers/extensions/assets_extensions.dart';
import 'package:vbt_case/helpers/extensions/context_extensions.dart';

import '../../../config/theme/colors/app_colors.dart';
import '../../../helpers/widgets/custom_image_asset.dart';

part './subView/user_image_name_text_column_widget.dart';
part './subView/user_score_text_widget.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.info, size: context.dynamicHeight(4)),
          
          actions: [Center(child: newMethod())],
          toolbarHeight: context.dynamicHeight(14),
          flexibleSpace: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.dynamicHeight(6)),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _UserImageAndNameTextColumnWidget(
                      imagePath: 'user2'.toJpg, userName: 'Fatih'),
                  const _UserScoreTextWidget(score: 110),
                  context.lowSizedBoxWidth,
                  Text(
                    '15',
                    style: context.textTheme.headline3?.copyWith(
                        color: Colors.green[300], fontWeight: FontWeight.bold),
                  ),
                  context.lowSizedBoxWidth,
                  const _UserScoreTextWidget(score: 90),
                  _UserImageAndNameTextColumnWidget(
                      imagePath: 'user1'.toJpg, userName: 'Demir'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  DropdownButton<IconData> newMethod() {
    return DropdownButton<IconData>(
      value: Icons.abc_rounded,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      underline: Container(
        height: 2,
        color: AppColors.winterCocoa,
      ),
      onChanged: (IconData? newValue) {},
      items: <IconData>[
        Icons.abc_rounded,
        Icons.access_alarm_sharp,
        Icons.add_card,
        Icons.work_rounded,
      ].map<DropdownMenuItem<IconData>>((IconData value) {
        return DropdownMenuItem<IconData>(
          value: value,
          child: Icon(value),
        );
      }).toList(),
    );
  }
}
