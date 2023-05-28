import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/features/base/screen_scale.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterCodeGroup extends StatelessWidget {
  const EnterCodeGroup({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  static const int _codeLength = 5;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return PinCodeTextField(
      autoDisposeControllers: false,
      appContext: context,
      length: _codeLength,
      onChanged: ((value) {}),
      controller: controller,
      showCursor: false,
      animationType: AnimationType.fade,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      textStyle: TextStyle(
          color: AppColors.accentColor,
          fontSize: 48 * screenScale,
          fontWeight: FontWeight.w700,
          fontFamily: 'academy'),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline,
        borderWidth: 4 * screenScale,
        fieldHeight: 60 * screenScale,
        fieldWidth: 40 * screenScale,
        selectedColor: AppColors.accentColor,
        inactiveColor: AppColors.accentColor,
        activeColor: AppColors.accentColor,
      ),
    );
  }
}
