part of 'game_bloc.dart';

@immutable
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
