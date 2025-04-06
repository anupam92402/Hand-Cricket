part of 'game_bloc.dart';

sealed class GameState extends Equatable {
  const GameState();
}

final class GameInitial extends GameState {
  @override
  List<Object> get props => [];
}


final class GameTimeOutState extends GameState {
  @override
  List<Object> get props => [];
}
