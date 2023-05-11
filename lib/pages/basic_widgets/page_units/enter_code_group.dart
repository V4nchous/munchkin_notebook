import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterCodeGroup extends StatefulWidget {
  const EnterCodeGroup({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<EnterCodeGroup> createState() => _EnterCodeGroupState();
}

class _EnterCodeGroupState extends State<EnterCodeGroup> {
  late String _codeValue;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: PinCodeTextField(
        autoDisposeControllers: false,
        appContext: context,
        length: 5,
        onChanged: ((value) {
          _codeValue = value;
        }),
        controller: widget.controller,
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
      ),
    );
  }
}
