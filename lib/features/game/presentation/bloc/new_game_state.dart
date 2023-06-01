part of 'new_game_bloc.dart';

@immutable
abstract class NewGameState {}

class GameNotReady extends NewGameState {}

class GameCreated extends NewGameState {
  final Game game;
  GameCreated(this.game);
}
