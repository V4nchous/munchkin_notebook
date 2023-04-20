import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/ui/app_theme.dart';
import 'navigation/router.dart';

final _appRouter = AppRouter()..delegate(initialRoutes: [const CreateGame()]);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: AppTheme.theme,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
