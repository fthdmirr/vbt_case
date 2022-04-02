import 'ICountDown.dart';

class CountDown extends ICountDown {
  CountDown(int duration) : super(duration);

  @override
  Stream<int> get startTimer => Stream<int>.periodic(
        const Duration(seconds: 1),
        (x) => duration - x,
      );
}
