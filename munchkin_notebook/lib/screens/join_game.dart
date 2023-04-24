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
class JoinGame extends StatelessWidget {
  const JoinGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackGround(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 40)),
            MyTitle(
              text: AppLocalizations.of(context)!.joinGameTitle,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            MyImage(
              path: AppLocalizations.of(context)!.joinGameImagePath,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              child: MyDescription(
                text: AppLocalizations.of(context)!.joinGameDescription,
              ),
            ),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const EnterCode());
              },
              child: MyPrimaryButton(
                text: AppLocalizations.of(context)!.joinGameAction1,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const MaxLevel());
              },
              child: MySecondaryButton(
                text: AppLocalizations.of(context)!.joinGameAction2,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 38)),
          ],
        ),
      ),
    );
  }
}
