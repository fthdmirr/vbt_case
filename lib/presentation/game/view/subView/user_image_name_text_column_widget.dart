part of '../game_view.dart';

class UserImageAndNameTextColumnWidget extends StatelessWidget {
  const UserImageAndNameTextColumnWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.lowSizedBox,
        CustomImageAsset(imagePath: user.image),
        CustomImageTitleWidget(name: user.name),
      ],
    );
  }
}

