import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook/features/base/base_page.dart';
import 'package:munchkin_notebook/features/base/buttons.dart';
import 'package:munchkin_notebook/features/base/title.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

class ListOfPlayers extends StatelessWidget {
  const ListOfPlayers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.listOfPlayersTitle),
        body: body,
        actions: Column(
          children: [
            MyPrimaryButton(
              text: AppLocalizations.of(context)!.listOfPlayersAction1,
              action: () {
                AutoRouter.of(context).push(EnterName());
              },
            ),
            MySecondaryButton(
              text: AppLocalizations.of(context)!.listOfPlayersAction2,
              action: () {
                AutoRouter.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
