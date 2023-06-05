import 'package:flutter/material.dart';
import 'package:munchkin_notebook/features/choose_gender/choose_gender_group.dart';
import 'package:munchkin_notebook/features/game/domain/entities/player.dart';

class Game {
  int maxLevel = 15;
  bool isGameMaster = false;
  int gameCode = 00000;
  List<Player> players = [
    Player(
        id: 1,
        name: '1',
        level: 1,
        bonus: 1,
        gender: Gender.male,
        color: Colors.black)
  ];

  Game(
      {required this.gameCode,
      required this.maxLevel,
      required this.isGameMaster,
      required this.players});
}
