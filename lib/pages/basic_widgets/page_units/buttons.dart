import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';

class MyPrimaryButton extends StatelessWidget {
  const MyPrimaryButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 20)),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 20 * screenScale,
            height: 0.95,
            fontWeight: FontWeight.w700,
            fontFamily: 'academy',
          ),
        ),
      ],
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
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 20)),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 18 * screenScale,
            fontWeight: FontWeight.w400,
            fontFamily: 'academy',
          ),
        ),
      ],
    );
  }
}
