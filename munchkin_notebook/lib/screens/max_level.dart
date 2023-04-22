import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';

import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/screens/basic_widgets/background.dart';
import 'package:munchkin_notebook/screens/basic_widgets/buttons.dart';
import 'package:munchkin_notebook/screens/basic_widgets/description.dart';
import 'package:munchkin_notebook/screens/basic_widgets/title.dart';

@RoutePage()
class MaxLevel extends StatelessWidget {
  const MaxLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackGround(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 40)),
            MyTitle(
              text: AppLocalizations.of(context)!.maxLvlTitle,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            _LvlSelectionGroup(),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              child: MyDescription(
                text: AppLocalizations.of(context)!.maxLvlDescription,
              ),
            ),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const SelfCounting());
              },
              child: MyPrimaryButton(
                text: AppLocalizations.of(context)!.maxLvlAction1,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const CreateGame());
              },
              child: MySecondaryButton(
                text: AppLocalizations.of(context)!.maxLvlAction2,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 38)),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _LvlSelectionGroup extends StatelessWidget {
  _LvlSelectionGroup();

  int lvlSelection = 10;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
          child: Image.asset('assets/images/arrow_left_max_lvl.png'),
        ),
        const Padding(padding: EdgeInsets.only(right: 20)),
        Text(
          lvlSelection.toString(),
          style: const TextStyle(
            color: AppColors.accentColor,
            fontSize: 48,
            fontWeight: FontWeight.w700,
            fontFamily: 'academy',
          ),
        ),
        const Padding(padding: EdgeInsets.only(right: 20)),
        SizedBox(
          height: 30,
          child: Image.asset('assets/images/arrow_right_max_lvl.png'),
        ),
      ],
    );
  }
}
