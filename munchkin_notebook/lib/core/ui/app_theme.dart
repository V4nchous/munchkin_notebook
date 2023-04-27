import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme = ThemeData(
    fontFamily: 'academy',
    primaryColor: AppColors.primaryColor,
    brightness: Brightness.light,
  );
}
