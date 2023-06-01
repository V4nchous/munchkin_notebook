part of 'new_game_bloc.dart';

@immutable
abstract class NewGameEvent {}

class NewGame extends NewGameEvent {
  final int maxLevel;
  final bool isGameMaster;

  NewGame(this.maxLevel, this.isGameMaster);
}

class ChangeGameMaxLevel extends NewGameEvent {
  final int maxLevel;

  ChangeGameMaxLevel(this.maxLevel);
}
