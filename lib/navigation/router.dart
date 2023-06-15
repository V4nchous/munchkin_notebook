import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CreateGame.page),
        AutoRoute(page: MaxLevel.page),
        AutoRoute(page: SelfCounting.page),
        AutoRoute(page: JoinGame.page),
        AutoRoute(page: EnterCode.page),
        AutoRoute(page: EnterName.page),
        AutoRoute(page: ChooseGender.page),
        AutoRoute(page: ChooseColor.page),
        AutoRoute(page: EmptyGame.page),
        AutoRoute(page: GameOptions.page),
        AutoRoute(page: ListOfPlayers.page),
        AutoRoute(page: PlayerRoute.page)
      ];
}
