part of 'game_bloc.dart';

abstract class CreateGameEvent {}

class StartGame extends CreateGameEvent {
  final int maxLevel;
  final bool isGameMaster;

  StartGame(this.maxLevel, this.isGameMaster);
}

class ChangeGameMaxLevel extends CreateGameEvent {
  final int maxLevel;

  ChangeGameMaxLevel(this.maxLevel);
}

class AddPlayer extends CreateGameEvent {
  final Player player;

  AddPlayer(this.player);
}
