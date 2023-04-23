import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/screens/basic_widgets/features/screen_scale.dart';

// ignore: must_be_immutable
class LvlSelectionGroup extends StatelessWidget {
  LvlSelectionGroup({super.key});

  int lvlSelection = 10;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30 * screenScale,
          child: Image.asset('assets/images/arrow_left_max_lvl.png'),
        ),
        const Padding(padding: EdgeInsets.only(right: 20)),
        Text(
          lvlSelection.toString(),
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 48 * screenScale,
            fontWeight: FontWeight.w700,
            fontFamily: 'academy',
          ),
        ),
        const Padding(padding: EdgeInsets.only(right: 20)),
        SizedBox(
          height: 30 * screenScale,
          child: Image.asset('assets/images/arrow_right_max_lvl.png'),
        ),
      ],
    );
  }
}
