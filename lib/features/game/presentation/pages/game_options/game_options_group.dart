import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook/features/game/presentation/pages/game_options/game_option_unit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

class GameOptionsGroupWidget extends StatelessWidget {
  const GameOptionsGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          constraints: const BoxConstraints(minWidth: double.infinity),
          child: BlocBuilder<GameBloc, CreateGameState>(
            bloc: gameBloc,
            builder: (context, state) {
              if (state is GameCreated) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GameCodeOption(
                        text:
                            AppLocalizations.of(context)!.gameOptionsCodeUnit +
                                state.game.gameCode.toString()),
                    const SizedBox(height: 20),
                    Option(
                        text:
                            AppLocalizations.of(context)!.gameOptionsLevelUnit +
                                state.game.maxLevel.toString()),
                    const SizedBox(height: 20),
                    Option(
                      text:
                          AppLocalizations.of(context)!.gameOptionsPlayersUnit +
                              state.game.players.length.toString(),
                      action: () {
                        AutoRouter.of(context).push(EnterName());
                      },
                    ),
                    const SizedBox(height: 20),
                    Option(
                        text: (state.game.isGameMaster)
                            ? AppLocalizations.of(context)!.gameOptionsIsGMUnit
                            : AppLocalizations.of(context)!
                                .gameOptionsNotGMUnit),
                  ],
                );
              } else {
                return Text(AppLocalizations.of(context)!.notCreatedGame);
              }
            },
          ),
        ),
      ),
    );
  }
}
