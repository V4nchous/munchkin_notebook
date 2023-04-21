import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../core/ui/constants/app_colors.dart';
import 'basic_widgets.dart';

@RoutePage()
class MaxLevel extends StatelessWidget {
  const MaxLevel({super.key});

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
            SizedBox(height: 20 * heightScale),
            _LvlSelectionGroup(
              widthScale: widthScale,
              heightScale: heightScale,
            ),
            SizedBox(height: 20 * heightScale),
            _Description(
              widthScale: widthScale,
              heightScale: heightScale,
            ),
            SizedBox(height: 72 * heightScale),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const SelfCounting());
              },
              child: _Action1(
                widthScale: widthScale,
                heightScale: heightScale,
                text: AppLocalizations.of(context)!.maxLvlAction1,
              ),
            ),
            SizedBox(height: 20 * heightScale),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const CreateGame());
              },
              child: _Action2(
                widthScale: widthScale,
                heightScale: heightScale,
                text: AppLocalizations.of(context)!.maxLvlAction2,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _LvlSelectionGroup extends StatelessWidget {
  _LvlSelectionGroup({
    required this.widthScale,
    required this.heightScale,
  });

  final double widthScale;
  final double heightScale;
  int value = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 148 * widthScale,
        minHeight: 51 * heightScale,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _Image(
            widthScale: widthScale,
            path: 'assets/images/arrow_left_max_lvl.png',
          ),
          SizedBox(width: 20 * widthScale),
          Text(
            value.toString(),
            style: TextStyle(
              color: AppColors.accentColor,
              fontSize: 48 * widthScale,
              fontWeight: FontWeight.w700,
              fontFamily: 'academy',
            ),
          ),
          SizedBox(width: 20 * widthScale),
          _Image(
              widthScale: widthScale,
              path: "assets/images/arrow_right_max_lvl.png"),
        ],
      ),
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
        maxWidth: 280 * widthScale,
        minHeight: 58 * heightScale,
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.maxLvlTitle,
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
        minHeight: 209 * heightScale,
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.maxLvlDescription,
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
