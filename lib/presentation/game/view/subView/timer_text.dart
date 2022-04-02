part of '../game_view.dart';

class TimerText extends StatelessWidget {
  const TimerText({
    Key? key,
    required this.duration,
    this.color,
  }) : super(key: key);

  final int duration;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text('$duration',
        style: context.textTheme.headline3?.copyWith(
          fontWeight: FontWeight.bold,
        ));
  }
}
