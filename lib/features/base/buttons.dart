import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/features/base/screen_scale.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyPrimaryButton extends StatelessWidget {
  const MyPrimaryButton({
    super.key,
    required this.text,
    this.action,
  });

  final void Function()? action;
  final String text;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return InkWell(
      onTap: action,
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
    this.action,
  });

  final String text;
  final void Function()? action;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return InkWell(
      onTap: action,
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

class LeftArrowButton extends StatelessWidget {
  const LeftArrowButton({
    super.key,
    required this.action,
  });

  final void Function()? action;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return InkWell(
      onTap: action,
      child: SizedBox(
        height: 30 * screenScale,
        child: Image.asset(AppLocalizations.of(context)!.leftArrowImagePath),
      ),
    );
  }
}

class RightArrowButton extends StatelessWidget {
  const RightArrowButton({
    super.key,
    required this.action,
  });

  final void Function()? action;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return InkWell(
      onTap: action,
      child: SizedBox(
        height: 30 * screenScale,
        child: Image.asset(AppLocalizations.of(context)!.rightArrowImagePath),
      ),
    );
  }
}
