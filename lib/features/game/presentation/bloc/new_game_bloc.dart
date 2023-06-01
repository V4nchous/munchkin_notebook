import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:munchkin_notebook/features/game/domain/entities/game.dart';

part 'new_game_event.dart';
part 'new_game_state.dart';

class NewGameBloc extends Bloc<NewGameEvent, NewGameState> {
  Game? game;

  NewGameBloc() : super(GameNotReady()) {
    on<NewGameEvent>((event, emit) {
      if (event is NewGame) {
        game = Game(
          maxLevel: event.maxLevel,
          isGameMaster: event.isGameMaster,
        );
        emit(GameCreated(game!));
      }
      if (event is ChangeGameMaxLevel) {
        if (game != null) {
          game?.maxLevel = event.maxLevel;
          emit(GameCreated(game!));
        }
      }
    });
  }
}
