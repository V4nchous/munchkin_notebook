import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/core/ui/widgets/base_page.dart';
import 'package:munchkin_notebook/core/ui/widgets/buttons.dart';
import 'package:munchkin_notebook/core/ui/widgets/description.dart';
import 'package:munchkin_notebook/core/ui/widgets/image.dart';
import 'package:munchkin_notebook/core/ui/widgets/title.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

@RoutePage()
class JoinGame extends StatelessWidget {
  const JoinGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MyBasePage(
      title: MyTitle(text: AppLocalizations.of(context)!.joinGameTitle),
      body: Expanded(
        child: Column(
          children: [
            const SizedBox(height: 20),
            MyImage(path: AppLocalizations.of(context)!.joinGameImagePath),
            const SizedBox(height: 20),
            Expanded(
              child: MyDescription(
                  text: AppLocalizations.of(context)!.joinGameDescription),
            ),
          ],
        ),
      ),
      actions: Column(
        children: [
          MyPrimaryButton(
            text: AppLocalizations.of(context)!.joinGameAction1,
            action: () {
              AutoRouter.of(context).navigate(const EnterCode());
            },
          ),
          const SizedBox(height: 20),
          MySecondaryButton(
            text: AppLocalizations.of(context)!.joinGameAction2,
            action: () {
              AutoRouter.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
