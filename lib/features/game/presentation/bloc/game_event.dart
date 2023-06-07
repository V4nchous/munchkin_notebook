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

class DecrementPlayerLevel extends CreateGameEvent {
  final Player player;

  DecrementPlayerLevel(this.player);
}

class IncrementPlayerLevel extends CreateGameEvent {
  final Player player;

  IncrementPlayerLevel(this.player);
}

class DecrementPlayerBonus extends CreateGameEvent {
  final Player player;

  DecrementPlayerBonus(this.player);
}

class IncrementPlayerBonus extends CreateGameEvent {
  final Player player;

  IncrementPlayerBonus(this.player);
}

class AddPlayer extends CreateGameEvent {
  final Player player;

  AddPlayer(this.player);
}
