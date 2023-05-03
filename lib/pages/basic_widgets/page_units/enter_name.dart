import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';

class EnterNameWidget extends StatelessWidget {
  const EnterNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
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
        decoration: const InputDecoration(
          hintText: 'Имя',
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.accentColor, width: 4.0)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.accentColor, width: 4.0)),
        ),
      ),
    );
  }
}
