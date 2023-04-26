import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/body.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/buttons.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/title.dart';

@RoutePage()
class EnterCode extends StatelessWidget {
  const EnterCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.enterCodeTitle),
        body: Expanded(
          child: MyBody(
              codeValues: const [0, 1, 2, 3, 4],
              text: AppLocalizations.of(context)!.enterCodeDescription),
        ),
        actions: Column(
          children: [
            MyPrimaryButton(
                text: AppLocalizations.of(context)!.enterCodeAction1),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const CreateGame());
              },
              child: MySecondaryButton(
                  text: AppLocalizations.of(context)!.enterCodeAction2),
            )
          ],
        ),
      ),
    );
  }
}
