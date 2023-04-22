import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/screens/basic_widgets/background.dart';
import 'package:munchkin_notebook/screens/basic_widgets/buttons.dart';
import 'package:munchkin_notebook/screens/basic_widgets/description.dart';
import 'package:munchkin_notebook/screens/basic_widgets/image.dart';
import 'package:munchkin_notebook/screens/basic_widgets/title.dart';

@RoutePage()
class CreateGame extends StatelessWidget {
  const CreateGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackGround(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 40)),
            MyTitle(
              text: AppLocalizations.of(context)!.createGameTitle,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            MyImage(
              path: AppLocalizations.of(context)!.createGameImagePath,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              child: MyDescription(
                text: AppLocalizations.of(context)!.createGameDescription,
              ),
            ),
            const Padding(padding: EdgeInsets.only(right: 20)),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const MaxLevel());
              },
              child: MyPrimaryButton(
                text: AppLocalizations.of(context)!.createGameAction1,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const JoinGame());
              },
              child: MySecondaryButton(
                text: AppLocalizations.of(context)!.createGameAction2,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 38)),
          ],
        ),
      ),
    );
  }
}
