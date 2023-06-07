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
        if (game!.players[event.index].level > 1) {
          game!.players[event.index].level--;
        }

        emit(GameCreated(game!));
      }
      if (event is IncrementPlayerLevel) {
        if (game!.players[event.index].level < game!.maxLevel) {
          game!.players[event.index].level++;
        }

        emit(GameCreated(game!));
      }

      if (event is DecrementPlayerBonus) {
        if (game!.players[event.index].bonus > 0) {
          game!.players[event.index].bonus--;
        }

        emit(GameCreated(game!));
      }
      if (event is IncrementPlayerBonus) {
        game!.players[event.index].bonus++;

        emit(GameCreated(game!));
      }
    });
  }
}
