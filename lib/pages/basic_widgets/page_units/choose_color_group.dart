import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';

class ChooseColorGroup extends StatefulWidget {
  const ChooseColorGroup({super.key});

  @override
  State<ChooseColorGroup> createState() => _ChooseColorGroupState();
}

class _ChooseColorGroupState extends State<ChooseColorGroup> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        RowOfColorUnits(),
        RowOfColorUnits(),
        RowOfColorUnits(),
        RowOfColorUnits(),
        RowOfColorUnits(),
        RowOfColorUnits(),
        RowOfColorUnits(),
      ],
    );
  }
}

class RowOfColorUnits extends StatelessWidget {
  const RowOfColorUnits({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ColorUnit(),
        ColorUnit(),
        ColorUnit(),
        ColorUnit(),
        ColorUnit(),
      ],
    );
  }
}

class ColorUnit extends StatelessWidget {
  const ColorUnit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Container(
        width: 40 * screenScale,
        height: 40 * screenScale,
        decoration: BoxDecoration(
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
          border: Border.all(
            color: AppColors.accentColor,
          ),
          borderRadius: BorderRadius.circular(100),
        ));
  }
}
