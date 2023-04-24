import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/screens/basic_widgets/background.dart';
import 'package:munchkin_notebook/screens/basic_widgets/buttons.dart';
import 'package:munchkin_notebook/screens/basic_widgets/description.dart';
import 'package:munchkin_notebook/screens/basic_widgets/lvl_selection_group.dart';
import 'package:munchkin_notebook/screens/basic_widgets/title.dart';

@RoutePage()
class MaxLevel extends StatelessWidget {
  const MaxLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackGround(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 40)),
            MyTitle(
              text: AppLocalizations.of(context)!.maxLvlTitle,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            LvlSelectionGroup(),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              child: MyDescription(
                text: AppLocalizations.of(context)!.maxLvlDescription,
              ),
            ),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const SelfCounting());
              },
              child: MyPrimaryButton(
                text: AppLocalizations.of(context)!.maxLvlAction1,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const CreateGame());
              },
              child: MySecondaryButton(
                text: AppLocalizations.of(context)!.maxLvlAction2,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 38)),
          ],
        ),
      ),
    );
  }
}
