abstract class ICountDown {
  ICountDown(this.duration);

  final int duration;
  Stream<int> get startTimer;
}
