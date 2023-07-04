import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/widgets/base_page.dart';
import 'package:munchkin_notebook/core/ui/widgets/screen_scale.dart';
import 'package:munchkin_notebook/core/ui/widgets/title.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/features/empty_game/presentation/widgets/empty_game_group.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

@RoutePage()
class EmptyGame extends StatelessWidget {
  const EmptyGame({super.key});

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return MyBasePage(
      title: MyTitle(text: AppLocalizations.of(context)!.emptyGameTitle),
      body: const EmptyGameGroup(),
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
    );
  }
}
