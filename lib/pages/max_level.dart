import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/body.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/buttons.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/title.dart';

@RoutePage()
class MaxLevel extends StatelessWidget {
  const MaxLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.maxLvlTitle),
        body: Expanded(
          child: MyBody(
              lvl: 10, text: AppLocalizations.of(context)!.maxLvlDescription),
        ),
        actions: Column(
          children: [
            InkWell(
                onTap: () {
                  AutoRouter.of(context).navigate(const SelfCounting());
                },
                child: MyPrimaryButton(
                    text: AppLocalizations.of(context)!.maxLvlAction1)),
            InkWell(
                onTap: () {
                  AutoRouter.of(context).navigate(const CreateGame());
                },
                child: MySecondaryButton(
                    text: AppLocalizations.of(context)!.maxLvlAction2))
          ],
        ),
      ),
    );
  }
}
