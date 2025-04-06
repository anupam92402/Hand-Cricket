part of 'game_bloc.dart';

sealed class GameEvent extends Equatable {
  const GameEvent();
}

class GameInitializeEvent extends GameEvent {
  const GameInitializeEvent({required this.player, required this.bot});

  final PlayerModel player, bot;

  @override
  List<Object?> get props => [player, bot];
}

class GameTimeoutEvent extends GameEvent {
  const GameTimeoutEvent();

  @override
  List<Object?> get props => [];
}
