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
  final int index;

  DecrementPlayerLevel(this.index);
}

class IncrementPlayerLevel extends CreateGameEvent {
  final int index;

  IncrementPlayerLevel(this.index);
}

class DecrementPlayerBonus extends CreateGameEvent {
  final int index;

  DecrementPlayerBonus(this.index);
}

class IncrementPlayerBonus extends CreateGameEvent {
  final int index;

  IncrementPlayerBonus(this.index);
}

class AddPlayer extends CreateGameEvent {
  final Player player;

  AddPlayer(this.player);
}
