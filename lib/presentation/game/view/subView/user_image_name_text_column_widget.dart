part of'../game_view.dart';

class _UserImageAndNameTextColumnWidget extends StatelessWidget {
  const _UserImageAndNameTextColumnWidget({
    Key? key,
    required this.imagePath,
    required this.userName,
  }) : super(key: key);

  final String imagePath;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomImageAsset(imagePath: imagePath),
        Text(
          userName,
          style: context.textTheme.bodyText1
              ?.copyWith(color: AppColors.winterCocoa),
        ),
      ],
    );
  }
}
