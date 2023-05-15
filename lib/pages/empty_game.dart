import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/description.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/image.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/title.dart';

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
        actions: Image.asset(
          AppLocalizations.of(context)!.emptyGameActionImagePath,
          height: 10 * screenScale,
          width: 40 * screenScale,
        ),
      ),
    );
  }
}
