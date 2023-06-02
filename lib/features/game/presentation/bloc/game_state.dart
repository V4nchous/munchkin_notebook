part of 'game_bloc.dart';

@immutable
abstract class CreateGameState {}

class GameNotReady extends CreateGameState {}

class GameCreated extends CreateGameState {
  final Game game;
  GameCreated(this.game);
}
