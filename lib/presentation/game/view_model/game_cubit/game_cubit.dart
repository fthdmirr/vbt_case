import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../helpers/countdown/countdown.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit({required this.countDown}) : super(const GameStarted());

  final CountDown countDown;

  StreamSubscription? _countDownStreamSubscription;

  bool isChange = false;

  void startGame() {
    _countDownStreamSubscription = countDown.startTimer.listen((duration) =>
        duration > 0
            ? _gameTimeChangeEmitStateForTime(duration)
            : _gameComplateEmitAndCancelSubscription());
  }

  void _gameTimeChangeEmitStateForTime(int duration) {
    emit(_GameTimeChange());
    _reverseIsChange(duration);
    emit(GameRunning(duration));
  }

  _reverseIsChange(int duration) {
    if (duration < 6) {
      isChange = !isChange;
    }
  }

  void _gameComplateEmitAndCancelSubscription() {
    emit(GameComplated());
    _countDownStreamSubscription?.cancel();
  }

  @override
  Future<void> close() {
    _countDownStreamSubscription?.cancel();
    return super.close();
  }
}
