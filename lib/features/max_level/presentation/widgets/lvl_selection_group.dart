import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/core/ui/widgets/buttons.dart';
import 'package:munchkin_notebook/core/ui/widgets/screen_scale.dart';

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
  late int _currentLevel;

  @override
  void initState() {
    _currentLevel = widget.controller.getCurrentLevel;

    widget.controller.setLevelListener((level) {
      setState(() {
        _currentLevel = level;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LeftArrowButton(action: () {
          widget.controller.decrementLevel();
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            _currentLevel.toString(),
            style: TextStyle(
              color: AppColors.accentColor,
              fontSize: 48 * screenScale,
              fontWeight: FontWeight.w700,
              fontFamily: 'academy',
            ),
          ),
        ),
        RightArrowButton(action: () {
          widget.controller.incrementLevel();
        }),
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
  }) : _currentValue = initialValue;

  int _currentValue;
  Function(int)? _onLevelChanged;

  int get getCurrentLevel => _currentValue;

  void setLevelListener(Function(int)? onLevelChanged) {
    _onLevelChanged = onLevelChanged;
  }

  void setLevel(int value) {
    if (_currentValue >= MaxLevelController._minLevel &&
        _currentValue <= MaxLevelController._maxLevel) {
      _currentValue = value;
      _onLevelChanged?.call(_currentValue);
    }
  }

  void decrementLevel() {
    if (_currentValue > MaxLevelController._minLevel) {
      _currentValue--;
      _onLevelChanged?.call(_currentValue);
    }
  }

  void incrementLevel() {
    if (_currentValue < MaxLevelController._maxLevel) {
      _currentValue++;
      _onLevelChanged?.call(_currentValue);
    }
  }
}
