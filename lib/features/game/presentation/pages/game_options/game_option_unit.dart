import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/features/base/screen_scale.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Option extends StatelessWidget {
  const Option({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.accentColor,
              fontSize: 20 * screenScale,
              height: 1.1,
              fontWeight: FontWeight.w700,
              fontFamily: 'academy',
            ),
          ),
        ),
        Image.asset(
          AppLocalizations.of(context)!.emptyGameActionImagePath,
          height: 5 * screenScale,
          width: 20 * screenScale,
        ),
      ],
    );
  }
}

class GameCodeOption extends StatelessWidget {
  const GameCodeOption({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 20 * screenScale,
            height: 1.1,
            fontWeight: FontWeight.w700,
            fontFamily: 'academy',
          ),
        ),
        const SizedBox(width: 10),
        Image.asset(
          AppLocalizations.of(context)!.gameOptionsCodeOptionImagePath,
          height: 20 * screenScale,
          width: 20 * screenScale,
        ),
      ],
    );
  }
}
