import 'package:flutter/material.dart';

import '../../config/theme/colors/app_colors.dart';
import '../extensions/context_extensions.dart';

class CustomImageTitleWidget extends StatelessWidget {
  const CustomImageTitleWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: context.paddingLowHorizontal,
        decoration: BoxDecoration(
          color: AppColors.backgroundWhite,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(context.lowValue),
            bottomRight: Radius.circular(context.lowValue),
          ),
        ),
        child: Text(
          name,
          style: context.textTheme.bodyText1,
        ));
  }
}
