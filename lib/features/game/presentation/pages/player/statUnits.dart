import 'package:flutter/material.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/features/base/buttons.dart';
import 'package:munchkin_notebook/features/base/screen_scale.dart';
import 'package:munchkin_notebook/features/game/domain/entities/player.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';

class LevelUnit extends StatelessWidget {
  const LevelUnit({super.key, required this.player});

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlayerStatLabel(
            label: AppLocalizations.of(context)!.playerPageLevelStat),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LeftArrowButton(
              action: () {
                gameBloc.add(DecrementPlayerLevel(player));
              },
            ),
            PlayerStatBody(
                player: player,
                playerStatValue: player.level.toString(),
                statImagePath:
                    AppLocalizations.of(context)!.emptyGameLevelImagePath),
            RightArrowButton(
              action: () {
                gameBloc.add(IncrementPlayerLevel(player));
              },
            ),
          ],
        )
      ],
    );
  }
}

class BonusUnit extends StatelessWidget {
  const BonusUnit({super.key, required this.player});

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlayerStatLabel(
            label: AppLocalizations.of(context)!.playerPageLevelStat),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LeftArrowButton(
              action: () {
                gameBloc.add(DecrementPlayerBonus(player));
              },
            ),
            PlayerStatBody(
                player: player,
                playerStatValue: player.bonus.toString(),
                statImagePath:
                    AppLocalizations.of(context)!.emptyGameBonusImagePath),
            RightArrowButton(
              action: () {
                gameBloc.add(IncrementPlayerBonus(player));
              },
            ),
          ],
        )
      ],
    );
  }
}

class PowerUnit extends StatelessWidget {
  const PowerUnit({super.key, required this.player});

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlayerStatLabel(
            label: AppLocalizations.of(context)!.playerPagePowerStat),
        const SizedBox(height: 10),
        PlayerStatBody(
            player: player,
            playerStatValue: (player.level + player.bonus).toString(),
            statImagePath:
                AppLocalizations.of(context)!.emptyGamePowerImagePath),
      ],
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
