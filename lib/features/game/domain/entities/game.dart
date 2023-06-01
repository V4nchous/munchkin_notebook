import 'package:munchkin_notebook/features/game/domain/entities/player.dart';

class Game {
  int maxLevel = 15;
  bool isGameMaster = false;
  List<Player>? players;

  Game({
    required this.maxLevel,
    required this.isGameMaster,
  });
}
