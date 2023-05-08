import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';

class ChooseGenderGroup extends StatefulWidget {
  const ChooseGenderGroup({
    super.key,
    required this.controller,
  });

  final ChooseGenderOpacityController controller;

  @override
  State<ChooseGenderGroup> createState() => _ChooseGenderGroupState();
}

class _ChooseGenderGroupState extends State<ChooseGenderGroup> {
  late int _currentGender;
  double maleOpacity = 0.3;
  double femaleOpacity = 0.3;

  @override
  void initState() {
    _currentGender = widget.controller.getCurrentGender;
    widget.controller.setGenderListener((gender) {
      setState(() {
        setOpacity(gender);
      });
    });
    super.initState();
  }

  void setOpacity(int gender) {
    switch (gender) {
      case 1:
        maleOpacity = 1;
        femaleOpacity = 0.3;
        break;
      case 2:
        maleOpacity = 0.3;
        femaleOpacity = 1;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              widget.controller.femaleChosen();
            });
          },
          child: Opacity(
            opacity: femaleOpacity,
            child: Image.asset(
              AppLocalizations.of(context)!.chooseGenderFemaleImagePath,
              height: 75 * screenScale,
            ),
          ),
        ),
        const SizedBox(width: 60),
        InkWell(
          onTap: () {
            setState(() {
              widget.controller.maleChosen();
            });
          },
          child: Opacity(
            opacity: maleOpacity,
            child: Image.asset(
              AppLocalizations.of(context)!.chooseGenderMaleImagePath,
              height: 80 * screenScale,
            ),
          ),
        ),
      ],
    );
  }
}

enum Gender {
  male(id: 1),
  female(id: 2);

  const Gender({
    required this.id,
  });

  final int id;
}

class ChooseGenderOpacityController {
  static const int _defaultGender = 0;

  ChooseGenderOpacityController({
    int initialValue = _defaultGender,
  }) : _currentGender = initialValue;

  int _currentGender;
  Function(int)? _onGenderChanged;

  int get getCurrentGender => _currentGender;

  void setGenderListener(Function(int)? onGenderChanged) {
    _onGenderChanged = onGenderChanged;
  }

  void maleChosen() {
    _currentGender = Gender.male.id;
    _onGenderChanged?.call(_currentGender);
  }

  void femaleChosen() {
    _currentGender = Gender.female.id;
    _onGenderChanged?.call(_currentGender);
  }
}
