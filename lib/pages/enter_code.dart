import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

import 'package:munchkin_notebook/pages/basic_widgets/base_page.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/buttons.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/description.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/enter_code_group.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/title.dart';

@RoutePage()
class EnterCode extends StatefulWidget {
  const EnterCode({super.key});

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  final TextEditingController _codeValueController = TextEditingController();

  @override
  void dispose() {
    _codeValueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: MyTitle(text: AppLocalizations.of(context)!.enterCodeTitle),
        body: Expanded(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: EnterCodeGroup(
                  controller: _codeValueController,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: MyDescription(
                    text: AppLocalizations.of(context)!.enterCodeDescription),
              ),
            ],
          ),
        ),
        actions: Column(
          children: [
            MyPrimaryButton(
              text: AppLocalizations.of(context)!.enterCodeAction1,
              action: () {
                AutoRouter.of(context).navigate(EnterName());
              },
            ),
            const SizedBox(height: 20),
            MySecondaryButton(
              text: AppLocalizations.of(context)!.enterCodeAction2,
              action: () {
                AutoRouter.of(context).navigate(const CreateGame());
              },
            )
          ],
        ),
      ),
    );
  }
}
