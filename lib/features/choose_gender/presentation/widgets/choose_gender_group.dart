import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/core/ui/widgets/screen_scale.dart';

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

  @override
  void initState() {
    _currentGender = widget.controller.getCurrentGender;
    widget.controller.setGenderListener((gender) {
      setState(() {
        _currentGender = gender;
      });
    });
    super.initState();
  }

  double getOpacity(Gender gender) {
    if (gender == _currentGender) {
      return _opacitySelected;
    } else {
      return _opacityNotSelected;
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
            widget.controller.setGender(Gender.female);
          },
          child: Opacity(
            opacity: getOpacity(Gender.female),
            child: Image.asset(
              AppLocalizations.of(context)!.chooseGenderFemaleImagePath,
              height: 75 * screenScale,
            ),
          ),
        ),
        const SizedBox(width: 60),
        InkWell(
          onTap: () {
            widget.controller.setGender(Gender.male);
          },
          child: Opacity(
            opacity: getOpacity(Gender.male),
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

  void setGender(Gender gender) {
    _currentGender = gender;
    _onGenderChanged?.call(_currentGender);
  }
}
