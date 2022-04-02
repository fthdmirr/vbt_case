part of 'game_cubit.dart';

class GameState extends Equatable {
  final int duration;
  const GameState({required this.duration});

  @override
  List<Object?> get props => [duration];

  GameState copyWith({
    int? duration,
    bool? changeTheme,
  }) {
    return GameState(
      duration: duration ?? this.duration
    );
  }
}

