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
class EnterCode extends StatelessWidget {
  const EnterCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackGround(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 40)),
            MyTitle(
              text: AppLocalizations.of(context)!.enterCodeTitle,
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            _EnterCodeGroup(),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              child: MyDescription(
                text: AppLocalizations.of(context)!.enterCodeDescription,
              ),
            ),
            MyPrimaryButton(
              text: AppLocalizations.of(context)!.enterCodeAction1,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const CreateGame());
              },
              child: MySecondaryButton(
                text: AppLocalizations.of(context)!.enterCodeAction2,
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
class _EnterCodeGroup extends StatelessWidget {
  _EnterCodeGroup();

  List<int> values = [0, 7, 8, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _EnterCodeGroupUnit(value: values[0]),
        const Padding(padding: EdgeInsets.only(right: 10)),
        _EnterCodeGroupUnit(value: values[1]),
        const Padding(padding: EdgeInsets.only(right: 10)),
        _EnterCodeGroupUnit(value: values[2]),
        const Padding(padding: EdgeInsets.only(right: 10)),
        _EnterCodeGroupUnit(value: values[3]),
        const Padding(padding: EdgeInsets.only(right: 10)),
        _EnterCodeGroupUnit(value: values[4]),
      ],
    );
  }
}

// ignore: must_be_immutable
class _EnterCodeGroupUnit extends StatelessWidget {
  _EnterCodeGroupUnit({required this.value});

  int? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: const TextStyle(
            color: AppColors.accentColor,
            fontSize: 48,
            fontWeight: FontWeight.w700,
            fontFamily: 'academy',
          ),
        ),
        Container(
          width: 40,
          height: 4,
          color: AppColors.accentColor,
        ),
      ],
    );
  }
}
