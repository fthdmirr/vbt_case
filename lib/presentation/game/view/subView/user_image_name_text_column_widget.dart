part of '../game_view.dart';

class _UserImageAndNameTextColumnWidget extends StatelessWidget {
  const _UserImageAndNameTextColumnWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomImageAsset(imagePath: user.image),
        Text(user.name, style: context.textTheme.bodyText1),
      ],
    );
  }
}
