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
class SelfCounting extends StatelessWidget {
  const SelfCounting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.selfCountingTitle),
        body: Expanded(
          child: Column(
            children: [
              const SizedBox(height: 20),
              MyImage(
                  path: AppLocalizations.of(context)!.selfCountingImagePath),
              const SizedBox(height: 20),
              Expanded(
                child: MyDescription(
                    text:
                        AppLocalizations.of(context)!.selfCountingDescription),
              ),
            ],
          ),
        ),
        actions: Column(
          children: [
            MyPrimaryButton(
                text: AppLocalizations.of(context)!.selfCountingAction1),
            const SizedBox(height: 20),
            MyPrimaryButton(
                text: AppLocalizations.of(context)!.selfCountingAction2),
            const SizedBox(height: 20),
            MySecondaryButton(
              text: AppLocalizations.of(context)!.selfCountingAction3,
              action: () {
                AutoRouter.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
