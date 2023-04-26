import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/body.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/buttons.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/title.dart';

@RoutePage()
class CreateGame extends StatelessWidget {
  const CreateGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.createGameTitle),
        body: Expanded(
          child: MyBody(
              path: AppLocalizations.of(context)!.createGameImagePath,
              text: AppLocalizations.of(context)!.createGameDescription),
        ),
        actions: Column(
          children: [
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const MaxLevel());
              },
              child: MyPrimaryButton(
                  text: AppLocalizations.of(context)!.createGameAction1),
            ),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const JoinGame());
              },
              child: MySecondaryButton(
                  text: AppLocalizations.of(context)!.createGameAction2),
            )
          ],
        ),
      ),
    );
  }
}
