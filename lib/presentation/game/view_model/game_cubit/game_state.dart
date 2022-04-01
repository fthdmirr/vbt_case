part of 'game_cubit.dart';

abstract class GameState extends Equatable {
  const GameState();

  @override
  List<Object> get props => [];
}

class GameStarted extends GameState {
  const GameStarted();
}

class GameRunning extends GameState {
  final int duration;

  const GameRunning(this.duration);
}

class _GameTimeChange extends GameState {}

class GameComplated extends GameState {}
