import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:munchkin_notebook/features/game/domain/entities/game.dart';
import 'package:munchkin_notebook/features/game/domain/entities/player.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<CreateGameEvent, CreateGameState> {
  Game? _game;

  GameBloc() : super(GameNotReady()) {
    on<CreateGameEvent>((event, emit) {
      if (event is StartGame) {
        _game = Game(
            maxLevel: event.maxLevel,
            isGameMaster: event.isGameMaster,
            gameCode: Random().nextInt(100000),
            players: []);

        emit(GameCreated(_game!));
      }
      if (event is ChangeGameMaxLevel) {
        if (_game != null) {
          _game = _game!.copyWith(maxLevel: event.maxLevel);
        }

        emit(GameCreated(_game!));
      }
      if (event is AddPlayer) {
        List<Player> newPlayers = List.from(_game!.players);
        newPlayers.add(event.player);
        _game = _game!.copyWith(players: newPlayers);

        emit(GameCreated(_game!));
      }
      if (event is DecrementPlayerLevel) {
        if (event.player.level > 1) {
          List<Player> newPlayers = List.from(_game!.players);
          final index =
              newPlayers.indexWhere((player) => player.id == event.player.id);
          newPlayers[index] = Player(
            id: event.player.id,
            name: event.player.name,
            level: event.player.level - 1,
            bonus: event.player.bonus,
            gender: event.player.gender,
            color: event.player.color,
          );
          _game = _game!.copyWith(players: newPlayers);
        }
        emit(GameCreated(_game!));
      }
      if (event is IncrementPlayerLevel) {
        if (event.player.level < _game!.maxLevel) {
          List<Player> newPlayers = List.from(_game!.players);
          final index =
              newPlayers.indexWhere((player) => player.id == event.player.id);
          newPlayers[index] = Player(
            id: event.player.id,
            name: event.player.name,
            level: event.player.level + 1,
            bonus: event.player.bonus,
            gender: event.player.gender,
            color: event.player.color,
          );
          _game = _game!.copyWith(players: newPlayers);
        }
        emit(GameCreated(_game!));
      }

      if (event is DecrementPlayerBonus) {
        if (event.player.bonus > 0) {
          List<Player> newPlayers = List.from(_game!.players);
          final index =
              newPlayers.indexWhere((player) => player.id == event.player.id);
          newPlayers[index] = Player(
            id: event.player.id,
            name: event.player.name,
            level: event.player.level,
            bonus: event.player.bonus - 1,
            gender: event.player.gender,
            color: event.player.color,
          );
          _game = _game!.copyWith(players: newPlayers);
        }
        emit(GameCreated(_game!));
      }
      if (event is IncrementPlayerBonus) {
        List<Player> newPlayers = List.from(_game!.players);
        final index =
            newPlayers.indexWhere((player) => player.id == event.player.id);
        newPlayers[index] = Player(
          id: event.player.id,
          name: event.player.name,
          level: event.player.level,
          bonus: event.player.bonus + 1,
          gender: event.player.gender,
          color: event.player.color,
        );
        _game = _game!.copyWith(players: newPlayers);
      }
      emit(GameCreated(_game!));
    });
  }
}
