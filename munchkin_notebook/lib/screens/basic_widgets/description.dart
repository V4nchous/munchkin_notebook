import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: AppColors.accentColor,
          fontSize: 18,
          height: 0.94,
          fontWeight: FontWeight.w400,
          fontFamily: 'academy',
        ),
      ),
    );
  }
}
