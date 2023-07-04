import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/core/ui/widgets/base_page.dart';
import 'package:munchkin_notebook/core/ui/widgets/buttons.dart';
import 'package:munchkin_notebook/core/ui/widgets/title.dart';
import 'package:munchkin_notebook/features/game/presentation/pages/list_of_players/presentation/widgets/list_of_players_group.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

@RoutePage()
class ListOfPlayers extends StatelessWidget {
  const ListOfPlayers({super.key});

  @override
  Widget build(BuildContext context) {
    return MyBasePage(
      title: MyTitle(text: AppLocalizations.of(context)!.listOfPlayersTitle),
      body: const ListOfPlayersGroup(),
      actions: Column(
        children: [
          MyPrimaryButton(
            text: AppLocalizations.of(context)!.listOfPlayersAction1,
            action: () {
              AutoRouter.of(context).push(EnterName());
            },
          ),
          const SizedBox(height: 20),
          MySecondaryButton(
            text: AppLocalizations.of(context)!.listOfPlayersAction2,
            action: () {
              AutoRouter.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
