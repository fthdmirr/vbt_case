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
    return SizedBox(
      width: context.dynamicWidth(10),
      child: Center(
        child: Text('$duration',
            style: context.textTheme.headline3?.copyWith(
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
