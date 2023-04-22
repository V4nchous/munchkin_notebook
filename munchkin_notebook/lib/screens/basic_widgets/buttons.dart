import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';

class MyPrimaryButton extends StatelessWidget {
  const MyPrimaryButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColors.accentColor,
        fontSize: 20,
        height: 0.95,
        fontWeight: FontWeight.w700,
        fontFamily: 'academy',
      ),
    );
  }
}

class MySecondaryButton extends StatelessWidget {
  const MySecondaryButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColors.accentColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontFamily: 'academy',
      ),
    );
  }
}
