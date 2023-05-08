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
  late Gender _currentGender;
  static const double _opacitySelected = 1;
  static const double _opacityNotSelected = 0.3;
  late double _maleOpacity, _femaleOpacity;

  @override
  void initState() {
    _currentGender = widget.controller.getCurrentGender;
    setOpacity(_currentGender);
    widget.controller.setGenderListener((gender) {
      setState(() {
        setOpacity(gender);
      });
    });
    super.initState();
  }

  void setOpacity(Gender gender) {
    switch (gender) {
      case Gender.male:
        _maleOpacity = _opacitySelected;
        _femaleOpacity = _opacityNotSelected;
        break;
      case Gender.female:
        _maleOpacity = _opacityNotSelected;
        _femaleOpacity = _opacitySelected;
        break;
      default:
        _maleOpacity = _opacityNotSelected;
        _femaleOpacity = _opacityNotSelected;
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
            opacity: _femaleOpacity,
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
            opacity: _maleOpacity,
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
  male,
  female;

  const Gender();
}

class ChooseGenderOpacityController {
  static const Gender _defaultGender = Gender.male;

  ChooseGenderOpacityController({
    Gender initialValue = _defaultGender,
  }) : _currentGender = initialValue;

  Gender _currentGender;
  Function(Gender)? _onGenderChanged;

  Gender get getCurrentGender => _currentGender;

  void setGenderListener(Function(Gender)? onGenderChanged) {
    _onGenderChanged = onGenderChanged;
  }

  void maleChosen() {
    _currentGender = Gender.male;
    _onGenderChanged?.call(_currentGender);
  }

  void femaleChosen() {
    _currentGender = Gender.female;
    _onGenderChanged?.call(_currentGender);
  }
}
