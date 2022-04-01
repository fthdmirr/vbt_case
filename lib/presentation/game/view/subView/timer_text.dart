part of'../game_view.dart';

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
    return AnimatedSize(
      duration: context.normalDuration,
      curve: Curves.easeInOutExpo,
      child: Text('$duration',
          style: context.textTheme.headline3?.copyWith(
              color: color ?? Colors.green[300],
              fontWeight: FontWeight.bold,
              fontSize: context.watch<GameCubit>().isChange ? 28 : 35)),
    );
  }
}