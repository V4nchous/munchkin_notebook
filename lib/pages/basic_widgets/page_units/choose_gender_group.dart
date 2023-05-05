import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';

// ignore: must_be_immutable
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
  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              widget.controller.setFemaleOpacity();
            });
          },
          child: Opacity(
            opacity: widget.controller.femaleOpacitySelected,
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
              widget.controller.setMaleOpacity();
            });
          },
          child: Opacity(
            opacity: widget.controller.maleOpacitySelected,
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

class ChooseGenderOpacityController {
  static const double _opacitySelected = 1;
  static const double _opacityNotSelected = 0.3;

  ChooseGenderOpacityController();

  double femaleOpacitySelected = _opacityNotSelected;
  double maleOpacitySelected = _opacityNotSelected;

  void setFemaleOpacity() {
    femaleOpacitySelected = _opacitySelected;
    maleOpacitySelected = _opacityNotSelected;
  }

  void setMaleOpacity() {
    maleOpacitySelected = _opacitySelected;
    femaleOpacitySelected = _opacityNotSelected;
  }
}
