import 'package:flutter/material.dart';

import '../../config/theme/colors/app_colors.dart';
import '../extensions/context_extensions.dart';

class CustomImageAsset extends StatelessWidget {
  const CustomImageAsset({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(context.lowValue),
      child: Container(
        color: AppColors.backgroundWhite,
        child: Image.asset(
          imagePath,
          height: context.dynamicHeight(9.5),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
