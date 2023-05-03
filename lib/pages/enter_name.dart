import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/buttons.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/image.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/title.dart';

class EnterName extends StatelessWidget {
  const EnterName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.enterNameTitle),
        body: Expanded(
          child: Column(
            children: [
              MyImage(path: AppLocalizations.of(context)!.enterNameImagePath),
              const SizedBox(height: 20),
            ],
          ),
        ),
        actions: Column(
          children: [
            MyPrimaryButton(
                text: AppLocalizations.of(context)!.enterNameAction1),
            const SizedBox(height: 20),
            MySecondaryButton(
                text: AppLocalizations.of(context)!.enterNameAction2)
          ],
        ),
      ),
    );
  }
}
