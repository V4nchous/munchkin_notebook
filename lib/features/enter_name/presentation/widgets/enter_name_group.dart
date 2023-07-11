import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EnterNameWidget extends StatelessWidget {
  const EnterNameWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        controller: controller,
        cursorColor: AppColors.accentColor,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.accentColor,
          fontSize: 36,
          height: 1.1,
          fontWeight: FontWeight.w700,
          fontFamily: 'academy',
          letterSpacing: 2,
        ),
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context)!.enterNameHint,
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.accentColor, width: 4.0)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.accentColor, width: 4.0)),
        ),
      ),
    );
  }
}
