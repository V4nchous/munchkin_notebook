import 'package:munchkin_notebook/features/game/domain/entities/player.dart';

class Game {
  final int maxLevel;
  final bool isGameMaster;
  final int gameCode;
  final List<Player> players;

  Game(
      {required this.gameCode,
      required this.maxLevel,
      required this.isGameMaster,
      required this.players});

  Game copyWith({
    int? maxLevel,
    bool? isGameMaster,
    int? gameCode,
    List<Player>? players,
  }) {
    return Game(
      gameCode: gameCode ?? this.gameCode,
      maxLevel: maxLevel ?? this.maxLevel,
      isGameMaster: isGameMaster ?? this.isGameMaster,
      players: players ?? this.players,
    );
  }
}
