import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/features/base/base_page.dart';
import 'package:munchkin_notebook/features/base/buttons.dart';
import 'package:munchkin_notebook/features/base/title.dart';
import 'package:munchkin_notebook/features/game/domain/entities/player.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/features/game/presentation/pages/player/statUnits.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

@RoutePage()
class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key, required this.playerID});

  final int playerID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameBloc, CreateGameState>(
        bloc: gameBloc,
        builder: (context, state) {
          if (state is GameCreated) {
            Player player = state.game.players
                .firstWhere((player) => player.id == playerID);
            return MyBasePage(
              title: MyTitle(text: player.name),
              body: Expanded(
                child: Column(
                  children: [
                    LevelUnit(player: player),
                    const SizedBox(height: 40),
                    BonusUnit(player: player),
                    const SizedBox(height: 40),
                    PowerUnit(player: player),
                  ],
                ),
              ),
              actions: MySecondaryButton(
                text: AppLocalizations.of(context)!.gameOptionsAction1,
                action: () {
                  AutoRouter.of(context).push(const EmptyGame());
                },
              ),
            );
          } else {
            return Text(AppLocalizations.of(context)!.notCreatedGame);
          }
        },
      ),
    );
  }
}
