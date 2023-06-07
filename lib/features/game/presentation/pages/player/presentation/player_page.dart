import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/features/base/base_page.dart';
import 'package:munchkin_notebook/features/base/buttons.dart';
import 'package:munchkin_notebook/features/base/screen_scale.dart';
import 'package:munchkin_notebook/features/base/title.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameBloc, CreateGameState>(
        bloc: gameBloc,
        builder: (context, state) {
          if (state is GameCreated) {
            return MyBasePage(
              title: MyTitle(text: state.game.players[index].name),
              body: Expanded(
                child: Column(
                  children: [
                    PlayerStatLabel(
                        label:
                            AppLocalizations.of(context)!.playerPageLevelStat),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LeftArrowButton(
                          action: () {
                            gameBloc.add(DecrementPlayerLevel(index));
                          },
                        ),
                        PlayerStatBody(
                            index: index,
                            playerStatValue:
                                state.game.players[index].level.toString(),
                            statImagePath: AppLocalizations.of(context)!
                                .emptyGameLevelImagePath),
                        RightArrowButton(action: () {
                          gameBloc.add(IncrementPlayerLevel(index));
                        }),
                      ],
                    ),
                    const SizedBox(height: 40),
                    PlayerStatLabel(
                        label:
                            AppLocalizations.of(context)!.playerPageBonusStat),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LeftArrowButton(action: () {
                          gameBloc.add(DecrementPlayerBonus(index));
                        }),
                        PlayerStatBody(
                            index: index,
                            playerStatValue:
                                state.game.players[index].bonus.toString(),
                            statImagePath: AppLocalizations.of(context)!
                                .emptyGameBonusImagePath),
                        RightArrowButton(action: () {
                          gameBloc.add(IncrementPlayerBonus(index));
                        }),
                      ],
                    ),
                    const SizedBox(height: 40),
                    PlayerStatLabel(
                        label:
                            AppLocalizations.of(context)!.playerPagePowerStat),
                    const SizedBox(height: 10),
                    PlayerStatBody(
                        index: index,
                        playerStatValue: (state.game.players[index].level +
                                state.game.players[index].bonus)
                            .toString(),
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
    required this.index,
    required this.playerStatValue,
    required this.statImagePath,
  });

  final int index;
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
        fontFamily: 'academy',
      ),
    );
  }
}
