import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'basic_widgets.dart';

@RoutePage()
class JoinGame extends StatelessWidget {
  const JoinGame({super.key});

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
            _Image(
              widthScale: widthScale,
              heightScale: heightScale,
              path: '',
            ),
            SizedBox(height: 20 * heightScale),
            _Description(
              widthScale: widthScale,
              heightScale: heightScale,
            ),
            SizedBox(height: 96 * heightScale),
            InkWell(
              onTap: () {
                AutoRouter.of(context).navigate(const EnterCode());
              },
              child: _Action1(
                widthScale: widthScale,
                heightScale: heightScale,
                text: AppLocalizations.of(context)!.joinGameAction1,
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
                text: AppLocalizations.of(context)!.joinGameAction2,
              ),
            ),
          ]),
        ),
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
        maxWidth: 237 * widthScale,
        minHeight: 58 * heightScale,
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.joinGameTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xff270b00),
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
    required this.heightScale,
    required this.path,
  });

  final double widthScale;
  final double heightScale;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFC654),
      constraints: BoxConstraints(
        maxWidth: 120 * widthScale,
        minHeight: 160 * heightScale,
      ),
      // child: Center(
      //   child: SizedBox(
      //     child: Image.asset(
      //       path,
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      // ),
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
          AppLocalizations.of(context)!.joinGameDescription,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: const Color(0xff270b00),
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
        maxWidth: 193 * widthScale,
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
        minWidth: 225 * widthScale,
        minHeight: 21 * heightScale,
      ),
      child: Center(
        child: SecondaryButton(
          widthScale: widthScale,
          heightScale: heightScale,
          text: text,
        ),
      ),
    );
  }
}
