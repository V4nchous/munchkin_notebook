import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';

// ignore: must_be_immutable
class LvlSelectionGroup extends StatefulWidget {
  const LvlSelectionGroup({
    super.key,
    required this.controller,
  });

  final MaxLevelController controller;

  @override
  State<LvlSelectionGroup> createState() => _LvlSelectionGroupState();
}

class _LvlSelectionGroupState extends State<LvlSelectionGroup> {
  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              widget.controller.decrementLevel();
            });
          },
          child: SizedBox(
            height: 30 * screenScale,
            child: Image.asset('assets/images/arrow_left_max_lvl.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            widget.controller.currentValue.toString(),
            style: TextStyle(
              color: AppColors.accentColor,
              fontSize: 48 * screenScale,
              fontWeight: FontWeight.w700,
              fontFamily: 'academy',
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              widget.controller.incrementLevel();
            });
          },
          child: SizedBox(
            height: 30 * screenScale,
            child: Image.asset('assets/images/arrow_right_max_lvl.png'),
          ),
        ),
      ],
    );
  }
}

class MaxLevelController {
  static const int _defaultLevel = 7;
  static const int _minLevel = 3;
  static const int _maxLevel = 15;

  MaxLevelController({
    int initialValue = _defaultLevel,
  }) : currentValue = initialValue;

  int currentValue;

  void setLevel(int value) {
    if (currentValue >= MaxLevelController._minLevel &&
        currentValue <= MaxLevelController._maxLevel) {
      currentValue = value;
    }
  }

  void decrementLevel() {
    if (currentValue > MaxLevelController._minLevel) {
      currentValue--;
    }
  }

  void incrementLevel() {
    if (currentValue < MaxLevelController._maxLevel) {
      currentValue++;
    }
  }
}
