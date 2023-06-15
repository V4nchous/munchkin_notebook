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
          int newLevel = event.player.level - 1;
          List<Player> newPlayers = List.from(_game!.players);
          newPlayers.removeWhere((player) => player.id == event.player.id);
          newPlayers.add(Player(
            id: event.player.id,
            name: event.player.name,
            level: newLevel,
            bonus: event.player.bonus,
            gender: event.player.gender,
            color: event.player.color,
          ));
          _game = _game!.copyWith(players: newPlayers);
        }

        emit(GameCreated(_game!));
      }
      if (event is IncrementPlayerLevel) {
        if (event.player.level < _game!.maxLevel) {
          int newLevel = event.player.level + 1;
          List<Player> newPlayers = List.from(_game!.players);
          newPlayers.removeWhere((player) => player.id == event.player.id);
          newPlayers.add(Player(
            id: event.player.id,
            name: event.player.name,
            level: newLevel,
            bonus: event.player.bonus,
            gender: event.player.gender,
            color: event.player.color,
          ));
          _game = _game!.copyWith(players: newPlayers);
        }

        emit(GameCreated(_game!));
      }

      if (event is DecrementPlayerBonus) {
        if (event.player.bonus > 0) {
          int newBonus = event.player.bonus - 1;
          List<Player> newPlayers = List.from(_game!.players);
          newPlayers.removeWhere((player) => player.id == event.player.id);
          newPlayers.add(Player(
            id: event.player.id,
            name: event.player.name,
            level: event.player.level,
            bonus: newBonus,
            gender: event.player.gender,
            color: event.player.color,
          ));
          _game = _game!.copyWith(players: newPlayers);
        }

        emit(GameCreated(_game!));
      }
      if (event is IncrementPlayerBonus) {
        int newBonus = event.player.bonus + 1;
        List<Player> newPlayers = List.from(_game!.players);
        newPlayers.removeWhere((player) => player.id == event.player.id);
        newPlayers.add(Player(
          id: event.player.id,
          name: event.player.name,
          level: event.player.level,
          bonus: newBonus,
          gender: event.player.gender,
          color: event.player.color,
        ));
        _game = _game!.copyWith(players: newPlayers);
      }
      emit(GameCreated(_game!));
    });
  }
}
