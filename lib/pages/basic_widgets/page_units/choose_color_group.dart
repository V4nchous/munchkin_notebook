import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';

class ChooseColorGroup extends StatelessWidget {
  const ChooseColorGroup({
    super.key,
    required this.controller,
  });

  final ChooseColorController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowOfColorUnits(controller: controller),
        RowOfColorUnits(controller: controller),
        RowOfColorUnits(controller: controller),
        RowOfColorUnits(controller: controller),
        RowOfColorUnits(controller: controller),
        RowOfColorUnits(controller: controller),
        RowOfColorUnits(controller: controller),
      ],
    );
  }
}

class RowOfColorUnits extends StatelessWidget {
  const RowOfColorUnits({
    super.key,
    required this.controller,
  });

  final ChooseColorController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColorUnit(
          controller: controller,
        ),
        ColorUnit(
          controller: controller,
        ),
        ColorUnit(
          controller: controller,
        ),
        ColorUnit(
          controller: controller,
        ),
        ColorUnit(
          controller: controller,
        ),
      ],
    );
  }
}

class ColorUnit extends StatefulWidget {
  const ColorUnit({
    super.key,
    required this.controller,
  });

  final ChooseColorController controller;

  @override
  State<ColorUnit> createState() => _ColorUnitState();
}

class _ColorUnitState extends State<ColorUnit> {
  late Color color;

  @override
  void initState() {
    color = randomColor().withOpacity(1.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return InkWell(
      onTap: () {
        widget.controller.setCurrentColor(color);
      },
      child: Container(
        width: 40 * screenScale,
        height: 40 * screenScale,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: AppColors.accentColor,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}

Color randomColor() => Color((math.Random().nextDouble() * 0xFFFFFF).toInt());

class ChooseColorController {
  late Color _currentColor;

  Color get getCurrentColor => _currentColor;

  void setCurrentColor(Color color) {
    _currentColor = color;
  }
}
