import 'package:munchkin_notebook/features/game/domain/entities/player.dart';

class Game {
  int maxLevel;
  bool isGameMaster;
  int gameCode;
  List<Player> players;

  Game(
      {required this.gameCode,
      required this.maxLevel,
      required this.isGameMaster,
      required this.players});
}
