import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook/features/game/presentation/pages/game_options/game_option_unit.dart';

class ListOfPlayersGroup extends StatelessWidget {
  const ListOfPlayersGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GameBloc, CreateGameState>(
        bloc: gameBloc,
        builder: (context, state) {
          return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: gameBloc.game!.players.length,
              itemBuilder: (context, index) {
                return Option(
                    text: gameBloc.game!.players[index].getPlayerName);
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20));
        },
      ),
    );
  }
}
