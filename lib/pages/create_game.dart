import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/buttons.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/description.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/image.dart';
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
          child: Column(
            children: [
              MyImage(path: AppLocalizations.of(context)!.createGameImagePath),
              const SizedBox(height: 20),
              Expanded(
                child: MyDescription(
                    text: AppLocalizations.of(context)!.createGameDescription),
              ),
            ],
          ),
        ),
        actions: Column(
          children: [
            MyPrimaryButton(
              text: AppLocalizations.of(context)!.createGameAction1,
              route: MaxLevel(),
            ),
            const SizedBox(height: 20),
            MySecondaryButton(
              text: AppLocalizations.of(context)!.createGameAction2,
              route: const JoinGame(),
            )
          ],
        ),
      ),
    );
  }
}
