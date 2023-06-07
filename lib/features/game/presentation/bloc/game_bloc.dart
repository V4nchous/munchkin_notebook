import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:munchkin_notebook/features/game/domain/entities/game.dart';
import 'package:munchkin_notebook/features/game/domain/entities/player.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<CreateGameEvent, CreateGameState> {
  Game? game;

  GameBloc() : super(GameNotReady()) {
    on<CreateGameEvent>((event, emit) {
      if (event is StartGame) {
        game = Game(
            maxLevel: event.maxLevel,
            isGameMaster: event.isGameMaster,
            gameCode: Random().nextInt(100000),
            players: []);

        emit(GameCreated(game!));
      }
      if (event is ChangeGameMaxLevel) {
        if (game != null) {
          game?.maxLevel = event.maxLevel;
          emit(GameCreated(game!));
        }
      }
      if (event is AddPlayer) {
        game!.players.add(event.player);

        emit(GameCreated(game!));
      }
      if (event is DecrementPlayerLevel) {
        if (event.player.level > 1) {
          event.player.level--;
        }

        emit(GameCreated(game!));
      }
      if (event is IncrementPlayerLevel) {
        if (event.player.level < game!.maxLevel) {
          event.player.level++;
        }

        emit(GameCreated(game!));
      }

      if (event is DecrementPlayerBonus) {
        if (event.player.bonus > 0) {
          event.player.bonus--;
        }

        emit(GameCreated(game!));
      }
      if (event is IncrementPlayerBonus) {
        event.player.bonus++;

        emit(GameCreated(game!));
      }
    });
  }
}
