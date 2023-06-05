import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:munchkin_notebook/features/choose_gender/choose_gender_group.dart';
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
            players: [
              Player(
                  id: 1,
                  name: '1',
                  level: 1,
                  bonus: 1,
                  gender: Gender.male,
                  color: Colors.black)
            ]);

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
