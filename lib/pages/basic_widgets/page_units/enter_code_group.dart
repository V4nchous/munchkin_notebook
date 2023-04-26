import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';

// ignore: must_be_immutable
class EnterCodeGroup extends StatelessWidget {
  EnterCodeGroup({super.key});

  List<int> values = [0, 7, 8, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _EnterCodeGroupUnit(value: values[0]),
        const Padding(padding: EdgeInsets.only(right: 10)),
        _EnterCodeGroupUnit(value: values[1]),
        const Padding(padding: EdgeInsets.only(right: 10)),
        _EnterCodeGroupUnit(value: values[2]),
        const Padding(padding: EdgeInsets.only(right: 10)),
        _EnterCodeGroupUnit(value: values[3]),
        const Padding(padding: EdgeInsets.only(right: 10)),
        _EnterCodeGroupUnit(value: values[4]),
      ],
    );
  }
}

// ignore: must_be_immutable
class _EnterCodeGroupUnit extends StatelessWidget {
  _EnterCodeGroupUnit({required this.value});

  int? value;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);

    return Column(
      children: [
        Text(
          value.toString(),
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 48 * screenScale,
            fontWeight: FontWeight.w700,
            fontFamily: 'academy',
          ),
        ),
        Container(
          width: 40 * screenScale,
          height: 4 * screenScale,
          color: AppColors.accentColor,
        ),
      ],
    );
  }
}
