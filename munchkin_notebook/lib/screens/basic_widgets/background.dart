import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';

class MyBackGround extends StatelessWidget {
  const MyBackGround({
    super.key,
    required this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.accentColor,
      width: double.infinity,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: MediaQuery.of(context).size.width * 0.02,
            color: AppColors.accentColor,
          ),
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: child,
      ),
    );
  }
}
