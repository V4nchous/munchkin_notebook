import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'basic_widgets.dart';

@RoutePage()
class EnterCode extends StatelessWidget {
  const EnterCode({super.key});

  @override
  Widget build(BuildContext context) {
    //оптимизация под различные диагонали экранов
    double baseWidth = 320;
    double baseheight = 568;
    double widthScale = MediaQuery.of(context).size.width / baseWidth;
    double heightScale = MediaQuery.of(context).size.height / baseheight;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              width: MediaQuery.of(context).size.width * 0.02,
              color: AppColors.accentColor,
            ),
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(height: 40 * heightScale),
            _Title(
              widthScale: widthScale,
              heightScale: heightScale,
            ),
            SizedBox(height: 40 * heightScale),
            _EnterCodeGroup(
              widthScale: widthScale,
              heightScale: heightScale,
            ),
            SizedBox(height: 20 * heightScale),
            _Description(
              widthScale: widthScale,
              heightScale: heightScale,
            ),
            SizedBox(height: 205 * heightScale),
            _Action1(
              widthScale: widthScale,
              heightScale: heightScale,
              text: AppLocalizations.of(context)!.enterCodeAction1,
            ),
            SizedBox(height: 20 * heightScale),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const CreateGame());
              },
              child: _Action2(
                widthScale: widthScale,
                heightScale: heightScale,
                text: AppLocalizations.of(context)!.enterCodeAction2,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _EnterCodeGroup extends StatelessWidget {
  _EnterCodeGroup({
    required this.widthScale,
    required this.heightScale,
  });

  final double widthScale;
  final double heightScale;
  List<int> values = [0, 7, 8, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 240 * widthScale,
        minHeight: 60 * heightScale,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _EnterCodeGroupUnit(
              value: values[0],
              widthScale: widthScale,
              heightScale: heightScale),
          SizedBox(width: 10 * widthScale),
          _EnterCodeGroupUnit(
              value: values[1],
              widthScale: widthScale,
              heightScale: heightScale),
          SizedBox(width: 10 * widthScale),
          _EnterCodeGroupUnit(
              value: values[2],
              widthScale: widthScale,
              heightScale: heightScale),
          SizedBox(width: 10 * widthScale),
          _EnterCodeGroupUnit(
              value: values[3],
              widthScale: widthScale,
              heightScale: heightScale),
          SizedBox(width: 10 * widthScale),
          _EnterCodeGroupUnit(
              value: values[4],
              widthScale: widthScale,
              heightScale: heightScale),
        ],
      ),
    );
  }
}

class _EnterCodeGroupUnit extends StatelessWidget {
  const _EnterCodeGroupUnit({
    required this.value,
    required this.widthScale,
    required this.heightScale,
  });

  final int value;
  final double widthScale;
  final double heightScale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 48 * widthScale,
            fontWeight: FontWeight.w700,
            fontFamily: 'academy',
          ),
        ),
        SizedBox(height: 1 * heightScale),
        Container(
          width: 40 * widthScale,
          height: 3 * heightScale,
          color: AppColors.accentColor,
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    required this.widthScale,
    required this.heightScale,
  });

  final double widthScale;
  final double heightScale;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 237 * widthScale,
        minHeight: 29 * heightScale,
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.enterCodeTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 32 * widthScale,
            fontWeight: FontWeight.w700,
            height: 1,
            fontFamily: 'munchkin',
          ),
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    required this.widthScale,
    required this.path,
  });

  final double widthScale;
  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 34 * widthScale,
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    required this.widthScale,
    required this.heightScale,
  });

  final double widthScale;
  final double heightScale;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 280 * widthScale,
        minHeight: 76 * heightScale,
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.enterCodeDescription,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 18 * widthScale,
            height: 0.9 * widthScale,
            fontWeight: FontWeight.w400,
            fontFamily: 'academy',
          ),
        ),
      ),
    );
  }
}

class _Action1 extends StatelessWidget {
  const _Action1({
    required this.widthScale,
    required this.heightScale,
    required this.text,
  });

  final double widthScale;
  final double heightScale;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 108 * widthScale,
        minHeight: 21 * heightScale,
      ),
      child: Center(
        child: PrimaryButton(
          widthScale: widthScale,
          heightScale: heightScale,
          text: text,
        ),
      ),
    );
  }
}

class _Action2 extends StatelessWidget {
  const _Action2({
    required this.widthScale,
    required this.heightScale,
    required this.text,
  });

  final double widthScale;
  final double heightScale;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 219 * widthScale,
        minHeight: 19 * heightScale,
      ),
      child: Center(
        child: SecondaryButton(
          heightScale: heightScale,
          widthScale: widthScale,
          text: text,
        ),
      ),
    );
  }
}
