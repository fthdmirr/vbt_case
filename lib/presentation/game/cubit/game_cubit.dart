import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vbt_case/helpers/countdown/countdown.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit({required this.countDown}) : super(GameInitial());

  final CountDown countDown;

  StreamSubscription? countDownStreamSubscription;

  @override
  Future<void> close() {
    countDownStreamSubscription?.cancel();
    return super.close();
  }
}
