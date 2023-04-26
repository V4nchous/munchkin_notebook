import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/body.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/buttons.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/title.dart';

@RoutePage()
class SelfCounting extends StatelessWidget {
  const SelfCounting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.selfCountingTitle),
        body: Expanded(
          child: MyBody(
              path: AppLocalizations.of(context)!.selfCountingImagePath,
              text: AppLocalizations.of(context)!.selfCountingDescription),
        ),
        actions: Column(
          children: [
            MyPrimaryButton(
                text: AppLocalizations.of(context)!.selfCountingAction1),
            MyPrimaryButton(
                text: AppLocalizations.of(context)!.selfCountingAction2),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const MaxLevel());
              },
              child: MySecondaryButton(
                  text: AppLocalizations.of(context)!.selfCountingAction3),
            ),
          ],
        ),
      ),
    );
  }
}
