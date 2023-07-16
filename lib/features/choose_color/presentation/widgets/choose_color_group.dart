import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChooseColorGroup extends StatefulWidget {
  const ChooseColorGroup({
    super.key,
    required this.controller,
  });

  final ChooseColorController controller;

  @override
  State<ChooseColorGroup> createState() => _ChooseColorGroupState();
}

class _ChooseColorGroupState extends State<ChooseColorGroup> {
  static const _itemCount = 35;
  late Color _currentColor;

  @override
  void initState() {
    ChooseColorController();
    _currentColor = widget.controller.getCurrentColor;
    widget.controller.setColorListener((color) {
      setState(() {
        _currentColor = color;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _itemCount,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 20,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            widget.controller
                .setSelectedColor(widget.controller.gridColors[index]);
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: widget.controller.gridColors[index],
              border: Border.all(
                color: AppColors.accentColor,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Stack(
              children: [
                if (widget.controller.gridColors[index] == _currentColor)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(AppLocalizations.of(context)!
                        .chooseColorImageSelectedPath),
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}

class ChooseColorController {
  List<Color> gridColors = [];
  Color _selectedColor = Colors.black;
  Function(Color)? _onColorSelected;
  static const _itemCount = 35;

  ChooseColorController() {
    for (var i = 0; i <= _itemCount; i++) {
      gridColors.add(randomColor().withOpacity(1.0));
    }
  }

  Color randomColor() => Color((math.Random().nextDouble() * 0xFFFFFF).toInt());

  Color get getCurrentColor => _selectedColor;

  void setSelectedColor(Color color) {
    _selectedColor = color;
    _onColorSelected?.call(_selectedColor);
  }

  void setColorListener(Function(Color)? onColorSelected) {
    _onColorSelected = onColorSelected;
  }
}
