import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/features/base/description.dart';
import 'package:munchkin_notebook/features/base/image.dart';
import 'package:munchkin_notebook/features/base/screen_scale.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

class EmptyGameGroup extends StatelessWidget {
  const EmptyGameGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return BlocBuilder<GameBloc, CreateGameState>(
      bloc: gameBloc,
      builder: (context, state) {
        if (state is GameCreated && state.game.players.length > 1) {
          return Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: state.game.players.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.game.players[index].name,
                            style: TextStyle(
                              color: AppColors.accentColor,
                              fontSize: 20 * screenScale,
                              height: 1.1,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'academy',
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              PlayerStatsUnit(
                                  playerStatValue: state
                                      .game.players[index].level
                                      .toString(),
                                  statImagePath: AppLocalizations.of(context)!
                                      .emptyGameLevelImagePath),
                              const SizedBox(width: 20),
                              PlayerStatsUnit(
                                  playerStatValue: state
                                      .game.players[index].bonus
                                      .toString(),
                                  statImagePath: AppLocalizations.of(context)!
                                      .emptyGameBonusImagePath),
                              const SizedBox(width: 20),
                              PlayerStatsUnit(
                                  playerStatValue:
                                      (state.game.players[index].level +
                                              state.game.players[index].bonus)
                                          .toString(),
                                  statImagePath: AppLocalizations.of(context)!
                                      .emptyGamePowerImagePath),
                            ],
                          )
                        ],
                      )),
                      InkWell(
                        onTap: () {
                          AutoRouter.of(context)
                              .push(PlayerRoute(index: index));
                        },
                        child: Image.asset(
                          AppLocalizations.of(context)!
                              .emptyGameActionImagePath,
                          height: 5 * screenScale,
                          width: 20 * screenScale,
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20)),
          );
        } else {
          return Expanded(
            child: Column(
              children: [
                MyImage(path: AppLocalizations.of(context)!.emptyGameImagePath),
                const SizedBox(height: 20),
                Expanded(
                  child: MyDescription(
                      text: AppLocalizations.of(context)!.emptyGameDescribtion),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}

class PlayerStatsUnit extends StatelessWidget {
  const PlayerStatsUnit(
      {super.key, required this.playerStatValue, required this.statImagePath});

  final String playerStatValue;
  final String statImagePath;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Row(
      children: [
        Image.asset(
          statImagePath,
          height: 20 * screenScale,
          width: 20 * screenScale,
        ),
        const SizedBox(width: 5),
        Text(
          playerStatValue,
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 20 * screenScale,
            height: 1.1,
            fontWeight: FontWeight.w700,
            fontFamily: 'academy',
          ),
        ),
      ],
    );
  }
}
