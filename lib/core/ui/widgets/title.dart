import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/core/ui/widgets/screen_scale.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({
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
        fontSize: 32 * screenScale,
        height: 1.1,
        fontWeight: FontWeight.w700,
        fontFamily: 'munchkin',
      ),
    );
  }
}
