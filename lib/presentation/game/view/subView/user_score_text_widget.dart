part of '../game_view.dart';

class _UserScoreTextWidget extends StatelessWidget {
  const _UserScoreTextWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Text('${user.score}',
        style: context.textTheme.headline6
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w400));
  }
}
