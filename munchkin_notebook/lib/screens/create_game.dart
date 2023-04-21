import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class CreateGame extends StatelessWidget {
  const CreateGame({super.key});

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
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40 * heightScale),
                _Title(
                  widthScale: widthScale,
                  heightScale: heightScale,
                ),
                SizedBox(height: 20 * heightScale),
                _Image(
                    widthScale: widthScale,
                    heightScale: heightScale,
                    path: 'assets/images/munchkin_create_game.png'),
                SizedBox(height: 20 * heightScale),
                _Description(
                  widthScale: widthScale,
                  heightScale: heightScale,
                ),
                SizedBox(height: 87 * heightScale),
                InkWell(
                  onTap: () {
                    AutoRouter.of(context).navigate(const MaxLevel());
                  },
                  child: _Action1(
                    widthScale: widthScale,
                    heightScale: heightScale,
                  ),
                ),
                SizedBox(height: 20 * heightScale),
                InkWell(
                  onTap: () {
                    AutoRouter.of(context).navigate(const JoinGame());
                  },
                  child: _Action2(
                    widthScale: widthScale,
                    heightScale: heightScale,
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
        maxWidth: 280 * widthScale,
        minHeight: 29 * heightScale,
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.createGameTitle,
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
    required this.heightScale,
    required this.path,
  });

  final double widthScale;
  final double heightScale;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 147.82 * widthScale,
        minHeight: 160 * heightScale,
      ),
      child: Center(
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
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
        minHeight: 114 * heightScale,
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.createGameDescription,
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
  });

  final double widthScale;
  final double heightScale;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 114 * widthScale,
        minHeight: 21 * heightScale,
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.createGameAction1,
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 20 * widthScale,
            fontWeight: FontWeight.w700,
            fontFamily: 'academy',
          ),
        ),
      ),
    );
  }
}

class _Action2 extends StatelessWidget {
  const _Action2({
    required this.widthScale,
    required this.heightScale,
  });

  final double widthScale;
  final double heightScale;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 138 * widthScale,
        minHeight: 19 * heightScale,
      ),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.createGameAction2,
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 18 * widthScale,
            fontWeight: FontWeight.w400,
            fontFamily: 'academy',
          ),
        ),
      ),
    );
  }
}
