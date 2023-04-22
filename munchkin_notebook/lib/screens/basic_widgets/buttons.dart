import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/screens/basic_widgets/screen_scale.dart';

class MyPrimaryButton extends StatelessWidget {
  const MyPrimaryButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.accentColor,
        fontSize: 20 * screenScale,
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
    double screenScale = getScreenScale(context);
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.accentColor,
        fontSize: 18 * screenScale,
        fontWeight: FontWeight.w400,
        fontFamily: 'academy',
      ),
    );
  }
}
