import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../helpers/countdown/ICountDown.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit({required this.countDown})
      : super(GameState(duration: countDown.duration)) {
    Future.microtask(() => startGame());
  }

  final ICountDown countDown;

  StreamSubscription? _countDownStreamSubscription;

  void startGame() {
    _countDownStreamSubscription = countDown.startTimer.listen((duration) {
      if (state.duration > 0) {
        emit(state.copyWith(duration: duration));
      } else {
        emit(state.copyWith(duration: 0));
        _countDownStreamSubscription?.cancel();
      }
    });
  }

  @override
  Future<void> close() {
    _countDownStreamSubscription?.cancel();
    return super.close();
  }
}
