import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/body.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/buttons.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/title.dart';

@RoutePage()
class JoinGame extends StatelessWidget {
  const JoinGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.joinGameTitle),
        body: Expanded(
          child: MyBody(
              path: AppLocalizations.of(context)!.joinGameImagePath,
              text: AppLocalizations.of(context)!.joinGameDescription),
        ),
        actions: Column(
          children: [
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const EnterCode());
              },
              child: MyPrimaryButton(
                  text: AppLocalizations.of(context)!.joinGameAction1),
            ),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const CreateGame());
              },
              child: MySecondaryButton(
                  text: AppLocalizations.of(context)!.joinGameAction2),
            )
          ],
        ),
      ),
    );
  }
}
