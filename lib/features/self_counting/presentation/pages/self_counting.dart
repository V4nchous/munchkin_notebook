import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:munchkin_notebook/core/ui/widgets/base_page.dart';
import 'package:munchkin_notebook/core/ui/widgets/buttons.dart';
import 'package:munchkin_notebook/core/ui/widgets/description.dart';
import 'package:munchkin_notebook/core/ui/widgets/image.dart';
import 'package:munchkin_notebook/core/ui/widgets/title.dart';

import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

@RoutePage()
class SelfCounting extends StatelessWidget {
  const SelfCounting({super.key, required this.maxLevel});

  final int maxLevel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.selfCountingTitle),
        body: Expanded(
          child: Column(
            children: [
              const SizedBox(height: 20),
              MyImage(
                  path: AppLocalizations.of(context)!.selfCountingImagePath),
              const SizedBox(height: 20),
              Expanded(
                child: MyDescription(
                    text:
                        AppLocalizations.of(context)!.selfCountingDescription),
              ),
            ],
          ),
        ),
        actions: Column(
          children: [
            MyPrimaryButton(
              text: AppLocalizations.of(context)!.selfCountingAction1,
              action: () {
                gameBloc.add(StartGame(maxLevel, true));
                AutoRouter.of(context).replaceAll([EnterName()]);
              },
            ),
            const SizedBox(height: 20),
            MyPrimaryButton(
              text: AppLocalizations.of(context)!.selfCountingAction2,
              action: () {
                gameBloc.add(StartGame(maxLevel, false));
                AutoRouter.of(context).replaceAll([EnterName()]);
              },
            ),
            const SizedBox(height: 20),
            MySecondaryButton(
              text: AppLocalizations.of(context)!.selfCountingAction3,
              action: () {
                AutoRouter.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
