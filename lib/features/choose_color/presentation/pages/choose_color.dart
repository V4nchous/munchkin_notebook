import 'dart:math';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/core/ui/widgets/base_page.dart';
import 'package:munchkin_notebook/core/ui/widgets/buttons.dart';
import 'package:munchkin_notebook/core/ui/widgets/title.dart';
import 'package:munchkin_notebook/features/game/domain/entities/player.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/features/choose_color/presentation/widgets/choose_color_group.dart';
import 'package:munchkin_notebook/features/choose_gender/presentation/widgets/choose_gender_group.dart';

@RoutePage()
class ChooseColor extends StatelessWidget {
  ChooseColor({
    super.key,
    required this.playerName,
    required this.playerGender,
  });

  final String playerName;
  final Gender playerGender;

  final ChooseColorController _colorController = ChooseColorController();

  @override
  Widget build(BuildContext context) {
    return MyBasePage(
      title: MyTitle(text: AppLocalizations.of(context)!.chooseColorTitle),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ChooseColorGroup(
            controller: _colorController,
          ),
        ),
      ),
      actions: Column(
        children: [
          const SizedBox(height: 40),
          MyPrimaryButton(
            text: AppLocalizations.of(context)!.chooseColorAction1,
            action: () {
              gameBloc.add(
                AddPlayer(
                  Player(
                    id: Random().nextInt(1000),
                    name: playerName,
                    level: 1,
                    bonus: 0,
                    gender: playerGender,
                    color: _colorController.getCurrentColor,
                  ),
                ),
              );
              AutoRouter.of(context).replaceAll([const EmptyGame()]);
            },
          ),
          const SizedBox(height: 20),
          MySecondaryButton(
            text: AppLocalizations.of(context)!.chooseColorAction2,
            action: () {
              AutoRouter.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
