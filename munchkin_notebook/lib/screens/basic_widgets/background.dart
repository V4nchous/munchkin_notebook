import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/screens/basic_widgets/screen_scale.dart';

class MyBackGround extends StatelessWidget {
  const MyBackGround({
    super.key,
    required this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return Container(
      color: AppColors.accentColor,
      width: double.infinity,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 10,
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
