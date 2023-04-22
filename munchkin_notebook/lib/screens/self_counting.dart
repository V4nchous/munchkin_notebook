import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';

import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/screens/basic_widgets/background.dart';
import 'package:munchkin_notebook/screens/basic_widgets/buttons.dart';
import 'package:munchkin_notebook/screens/basic_widgets/description.dart';
import 'package:munchkin_notebook/screens/basic_widgets/image.dart';
import 'package:munchkin_notebook/screens/basic_widgets/title.dart';

@RoutePage()
class SelfCounting extends StatelessWidget {
  const SelfCounting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackGround(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 40)),
            MyTitle(
              text: AppLocalizations.of(context)!.selfCountingTitle,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            MyImage(
              path: AppLocalizations.of(context)!.selfCountingImagePath,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              child: MyDescription(
                text: AppLocalizations.of(context)!.selfCountingDescription,
              ),
            ),
            MyPrimaryButton(
              text: AppLocalizations.of(context)!.selfCountingAction1,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            MyPrimaryButton(
              text: AppLocalizations.of(context)!.selfCountingAction2,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const MaxLevel());
              },
              child: MySecondaryButton(
                text: AppLocalizations.of(context)!.selfCountingAction3,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 38)),
          ],
        ),
      ),
    );
  }
}
