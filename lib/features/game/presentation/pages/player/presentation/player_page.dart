import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/features/base/base_page.dart';
import 'package:munchkin_notebook/features/base/buttons.dart';
import 'package:munchkin_notebook/features/base/screen_scale.dart';
import 'package:munchkin_notebook/features/base/title.dart';
import 'package:munchkin_notebook/features/game/domain/entities/player.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                    StatUnit(
                        player: player,
                        label:
                            AppLocalizations.of(context)!.playerPageLevelStat,
                        playerStatValue: player.level.toString(),
                        statImagePath: AppLocalizations.of(context)!
                            .emptyGameLevelImagePath),
                    const SizedBox(height: 40),
                    StatUnit(
                        player: player,
                        label:
                            AppLocalizations.of(context)!.playerPageBonusStat,
                        playerStatValue: player.bonus.toString(),
                        statImagePath: AppLocalizations.of(context)!
                            .emptyGameBonusImagePath),
                    const SizedBox(height: 40),
                    PlayerStatLabel(
                        label:
                            AppLocalizations.of(context)!.playerPagePowerStat),
                    const SizedBox(height: 10),
                    PlayerStatBody(
                        player: player,
                        playerStatValue:
                            (player.level + player.bonus).toString(),
                        statImagePath: AppLocalizations.of(context)!
                            .emptyGamePowerImagePath),
                  ],
                ),
              ),
              actions: MySecondaryButton(
                text: AppLocalizations.of(context)!.gameOptionsAction1,
                action: () {
                  AutoRouter.of(context).pop();
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

class PlayerStatBody extends StatelessWidget {
  const PlayerStatBody({
    super.key,
    required this.player,
    required this.playerStatValue,
    required this.statImagePath,
  });

  final Player player;
  final String statImagePath;
  final String playerStatValue;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            statImagePath,
            height: 40 * screenScale,
            width: 40 * screenScale,
          ),
          const SizedBox(width: 10),
          Text(
            playerStatValue,
            style: TextStyle(
              color: AppColors.accentColor,
              fontSize: 48 * screenScale,
              fontWeight: FontWeight.w700,
              fontFamily: 'academy',
            ),
          ),
        ],
      ),
    );
  }
}

class PlayerStatLabel extends StatelessWidget {
  const PlayerStatLabel({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Text(
      label,
      style: TextStyle(
          color: AppColors.accentColor,
          fontSize: 30 * screenScale,
          height: 1.1,
          fontWeight: FontWeight.w700,
          fontFamily: 'academy'),
    );
  }
}

class StatUnit extends StatelessWidget {
  const StatUnit({
    super.key,
    required this.player,
    required this.label,
    required this.playerStatValue,
    required this.statImagePath,
  });

  final Player player;
  final String label;
  final String statImagePath;
  final String playerStatValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlayerStatLabel(label: label),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LeftArrowButton(
              action: () {
                if (label ==
                    AppLocalizations.of(context)!.playerPageLevelStat) {
                  gameBloc.add(DecrementPlayerLevel(player));
                } else {
                  gameBloc.add(DecrementPlayerBonus(player));
                }
              },
            ),
            PlayerStatBody(
                player: player,
                playerStatValue: playerStatValue,
                statImagePath: statImagePath),
            RightArrowButton(action: () {
              if (label == AppLocalizations.of(context)!.playerPageLevelStat) {
                gameBloc.add(IncrementPlayerLevel(player));
              } else {
                gameBloc.add(IncrementPlayerBonus(player));
              }
            }),
          ],
        )
      ],
    );
  }
}
