import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({
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
        fontSize: 32,
        height: 1.1,
        fontWeight: FontWeight.w700,
        fontFamily: 'munchkin',
      ),
    );
  }
}
