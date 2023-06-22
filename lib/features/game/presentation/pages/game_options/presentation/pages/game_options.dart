import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/core/ui/widgets/base_page.dart';
import 'package:munchkin_notebook/core/ui/widgets/buttons.dart';
import 'package:munchkin_notebook/core/ui/widgets/title.dart';
import 'package:munchkin_notebook/features/game/presentation/pages/game_options/presentation/widgets/game_options_group.dart';

@RoutePage()
class GameOptions extends StatelessWidget {
  const GameOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.gameOptionsTitle),
        body: const GameOptionsGroupWidget(),
        actions: MySecondaryButton(
          text: AppLocalizations.of(context)!.gameOptionsAction1,
          action: () {
            AutoRouter.of(context).pop();
          },
        ),
      ),
    );
  }
}
