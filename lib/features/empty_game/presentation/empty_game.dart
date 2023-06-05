import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook/features/base/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/features/base/screen_scale.dart';
import 'package:munchkin_notebook/features/base/description.dart';
import 'package:munchkin_notebook/features/base/image.dart';
import 'package:munchkin_notebook/features/base/title.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

@RoutePage()
class EmptyGame extends StatelessWidget {
  const EmptyGame({super.key});

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.emptyGameTitle),
        body: Expanded(
          child: Column(
            children: [
              MyImage(path: AppLocalizations.of(context)!.emptyGameImagePath),
              const SizedBox(height: 20),
              Expanded(
                child: MyDescription(
                    text: AppLocalizations.of(context)!.emptyGameDescribtion),
              ),
            ],
          ),
        ),
        actions: InkWell(
          onTap: () {
            AutoRouter.of(context).push(const GameOptions());
          },
          child: Image.asset(
            AppLocalizations.of(context)!.emptyGameActionImagePath,
            height: 10 * screenScale,
            width: 40 * screenScale,
          ),
        ),
      ),
    );
  }
}
