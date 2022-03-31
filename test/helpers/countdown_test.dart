import 'package:flutter_test/flutter_test.dart';
import 'package:vbt_case/helpers/countdown/countdown.dart';

void main() {
  test('countDownTest', () {
    CountDown countDown = CountDown(5);

    final stream = countDown.startTimer;

    stream.listen((x) {
    expectLater(stream, emits([4, 3, 2, 1]));
    });

  });
}
