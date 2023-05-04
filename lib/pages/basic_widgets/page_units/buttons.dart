import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';

class MyPrimaryButton extends StatelessWidget {
  const MyPrimaryButton({
    super.key,
    required this.text,
    this.route,
  });

  final String text;
  final PageRouteInfo? route;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return InkWell(
      onTap: () {
        if (route != null) {
          AutoRouter.of(context).navigate(route!);
        }
      },
      child: Text(
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
    );
  }
}

class MySecondaryButton extends StatelessWidget {
  const MySecondaryButton({
    super.key,
    required this.text,
    this.route,
  });

  final String text;
  final PageRouteInfo? route;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return InkWell(
      onTap: () {
        if (route != null) {
          AutoRouter.of(context).navigate(route!);
        }
      },
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.accentColor,
          fontSize: 18 * screenScale,
          fontWeight: FontWeight.w400,
          fontFamily: 'academy',
        ),
      ),
    );
  }
}
