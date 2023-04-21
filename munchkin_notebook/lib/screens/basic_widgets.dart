import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.widthScale,
    required this.heightScale,
    required this.text,
  });

  final double widthScale;
  final double heightScale;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.accentColor,
        fontSize: 20 * widthScale,
        fontWeight: FontWeight.w700,
        fontFamily: 'academy',
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.widthScale,
    required this.heightScale,
    required this.text,
  });

  final double widthScale;
  final double heightScale;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.accentColor,
        fontSize: 18 * widthScale,
        fontWeight: FontWeight.w400,
        fontFamily: 'academy',
      ),
    );
  }
}
