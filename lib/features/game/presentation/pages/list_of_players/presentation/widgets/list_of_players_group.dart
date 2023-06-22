import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/features/game/presentation/pages/game_options/presentation/widgets/game_option_unit.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

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
          if (state is GameCreated) {
            return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: state.game.players.length,
                itemBuilder: (context, index) {
                  return Option(
                    text: state.game.players[index].name,
                    action: () {
                      AutoRouter.of(context).push(
                          PlayerRoute(playerID: state.game.players[index].id));
                    },
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20));
          } else {
            return Text(AppLocalizations.of(context)!.notCreatedGame);
          }
        },
      ),
    );
  }
}
