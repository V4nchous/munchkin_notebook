import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/buttons.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/choose_gender_group.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/image.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/title.dart';

@RoutePage()
class ChooseGender extends StatelessWidget {
  ChooseGender({
    super.key,
    required this.playerName,
  });

  final ChooseGenderOpacityController _opacityController =
      ChooseGenderOpacityController();

  final String playerName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.chooseGenderTitle),
        body: Expanded(
          child: Column(
            children: [
              MyImage(
                  path: AppLocalizations.of(context)!.chooseGenderImagePath),
              const SizedBox(height: 40),
              ChooseGenderGroup(
                controller: _opacityController,
              ),
            ],
          ),
        ),
        actions: Column(children: [
          MyPrimaryButton(
            text: AppLocalizations.of(context)!.chooseGenderAction1,
            action: () {
              AutoRouter.of(context).navigate(ChooseColor(
                  playerName: playerName,
                  playerGender: _opacityController.getCurrentGender));
            },
          ),
          const SizedBox(height: 20),
          MySecondaryButton(
            text: AppLocalizations.of(context)!.chooseGenderAction2,
            action: () {
              AutoRouter.of(context).navigate(EnterName());
            },
          ),
        ]),
      ),
    );
  }
}
