import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/models/dto/player_model.dart';

part 'game_event.dart';

part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  PlayerType _currentPlayer;
  late final PlayerModel player, bot;

  GameBloc()
      : _currentPlayer = PlayerType.player,
        super(GameInitial()) {
    on<GameInitializeEvent>((event, emit) {
      player = event.player;
      bot = event.bot;
    });

    on<GameTimeoutEvent>((event, emit) {
      emit(GameTimeOutState());
    });
  }
}
