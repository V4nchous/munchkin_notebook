import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/screens/basic_widgets/features/screen_scale.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: AppColors.accentColor,
          fontSize: 18 * screenScale,
          height: 0.94,
          fontWeight: FontWeight.w400,
          fontFamily: 'academy',
        ),
      ),
    );
  }
}
