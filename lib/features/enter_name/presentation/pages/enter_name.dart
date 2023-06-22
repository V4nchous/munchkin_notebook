import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/core/ui/widgets/base_page.dart';
import 'package:munchkin_notebook/core/ui/widgets/buttons.dart';
import 'package:munchkin_notebook/core/ui/widgets/image.dart';
import 'package:munchkin_notebook/core/ui/widgets/title.dart';

import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/features/enter_name/presentation/widgets/enter_name_group.dart';

@RoutePage()
class EnterName extends StatelessWidget {
  EnterName({super.key});

  final TextEditingController _playerNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.enterNameTitle),
        body: Expanded(
          child: Column(
            children: [
              MyImage(path: AppLocalizations.of(context)!.enterNameImagePath),
              const SizedBox(height: 40),
              EnterNameWidget(controller: _playerNameController),
            ],
          ),
        ),
        actions: Column(
          children: [
            MyPrimaryButton(
              text: AppLocalizations.of(context)!.enterNameAction1,
              action: () {
                AutoRouter.of(context)
                    .push(ChooseGender(playerName: _playerNameController.text));
              },
            ),
            const SizedBox(height: 20),
            MySecondaryButton(
              text: AppLocalizations.of(context)!.enterNameAction2,
              action: () {
                AutoRouter.of(context).push(const CreateGame());
              },
            )
          ],
        ),
      ),
    );
  }
}
