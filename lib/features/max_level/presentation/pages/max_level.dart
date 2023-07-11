import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/core/ui/widgets/base_page.dart';
import 'package:munchkin_notebook/core/ui/widgets/buttons.dart';
import 'package:munchkin_notebook/core/ui/widgets/description.dart';
import 'package:munchkin_notebook/core/ui/widgets/title.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/features/max_level/presentation/widgets/lvl_selection_group.dart';

@RoutePage()
class MaxLevel extends StatelessWidget {
  MaxLevel({super.key});

  final _maxLevelController = MaxLevelController();

  @override
  Widget build(BuildContext context) {
    return MyBasePage(
      title: MyTitle(text: AppLocalizations.of(context)!.maxLvlTitle),
      body: Expanded(
        child: Column(
          children: [
            const SizedBox(height: 20),
            LvlSelectionGroup(
              controller: _maxLevelController,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: MyDescription(
                  text: AppLocalizations.of(context)!.maxLvlDescription),
            ),
          ],
        ),
      ),
      actions: Column(
        children: [
          MyPrimaryButton(
            text: AppLocalizations.of(context)!.maxLvlAction1,
            action: () {
              if (gameBloc.state is GameCreated) {
                gameBloc.add(
                    ChangeGameMaxLevel(_maxLevelController.getCurrentLevel));
                AutoRouter.of(context).pop();
              } else {
                AutoRouter.of(context).navigate(SelfCounting(
                    maxLevel: _maxLevelController.getCurrentLevel));
              }
            },
          ),
          const SizedBox(height: 20),
          MySecondaryButton(
            text: AppLocalizations.of(context)!.maxLvlAction2,
            action: () {
              AutoRouter.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
