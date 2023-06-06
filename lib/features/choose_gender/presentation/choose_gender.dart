import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/features/base/base_page.dart';
import 'package:munchkin_notebook/features/base/buttons.dart';
import 'package:munchkin_notebook/features/choose_gender/choose_gender_group.dart';
import 'package:munchkin_notebook/features/base/image.dart';
import 'package:munchkin_notebook/features/base/title.dart';

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
              AutoRouter.of(context).push(ChooseColor(
                  playerName: playerName,
                  playerGender: _opacityController.getCurrentGender));
            },
          ),
          const SizedBox(height: 20),
          MySecondaryButton(
            text: AppLocalizations.of(context)!.chooseGenderAction2,
            action: () {
              AutoRouter.of(context).pop();
            },
          ),
        ]),
      ),
    );
  }
}
