part of '../game_view.dart';

class _UserScoreTextWidget extends StatelessWidget {
  const _UserScoreTextWidget({
    Key? key,
    required this.score,
  }) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Text('$score',
        style: context.textTheme.headline6
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w400));
  }
}
