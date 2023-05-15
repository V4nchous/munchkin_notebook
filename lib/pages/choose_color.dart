import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/buttons.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/choose_color_group.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/title.dart';

@RoutePage()
class ChooseColor extends StatelessWidget {
  ChooseColor({super.key});

  final ChooseColorController _colorController = ChooseColorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.chooseColorTitle),
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ChooseColorGroup(
              controller: _colorController,
            ),
          ),
        ),
        actions: Column(
          children: [
            const SizedBox(height: 40),
            MyPrimaryButton(
              text: AppLocalizations.of(context)!.chooseColorAction1,
              action: () {
                AutoRouter.of(context).navigate(const EmptyGame());
              },
            ),
            const SizedBox(height: 20),
            MySecondaryButton(
              text: AppLocalizations.of(context)!.chooseColorAction2,
              action: () {
                AutoRouter.of(context).navigate(ChooseGender());
              },
            )
          ],
        ),
      ),
    );
  }
}
