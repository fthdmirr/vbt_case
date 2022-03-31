class CountDown {
  CountDown(this.seconds);

  final int seconds;

  Stream<int> get startTimer => Stream<int>.periodic(
        const Duration(seconds: 1),
        (x) => seconds - x,
      );
}
