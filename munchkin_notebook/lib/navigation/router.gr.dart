// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:munchkin_notebook/screens/create_game.dart' as _i2;
import 'package:munchkin_notebook/screens/enter_code.dart' as _i5;
import 'package:munchkin_notebook/screens/join_game.dart' as _i4;
import 'package:munchkin_notebook/screens/max_level.dart' as _i1;
import 'package:munchkin_notebook/screens/self_counting.dart' as _i3;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MaxLevel.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MaxLevel(),
      );
    },
    CreateGame.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateGame(),
      );
    },
    SelfCounting.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SelfCounting(),
      );
    },
    JoinGame.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.JoinGame(),
      );
    },
    EnterCode.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EnterCode(),
      );
    },
  };
}

/// generated route for
/// [_i1.MaxLevel]
class MaxLevel extends _i6.PageRouteInfo<void> {
  const MaxLevel({List<_i6.PageRouteInfo>? children})
      : super(
          MaxLevel.name,
          initialChildren: children,
        );

  static const String name = 'MaxLevel';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreateGame]
class CreateGame extends _i6.PageRouteInfo<void> {
  const CreateGame({List<_i6.PageRouteInfo>? children})
      : super(
          CreateGame.name,
          initialChildren: children,
        );

  static const String name = 'CreateGame';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SelfCounting]
class SelfCounting extends _i6.PageRouteInfo<void> {
  const SelfCounting({List<_i6.PageRouteInfo>? children})
      : super(
          SelfCounting.name,
          initialChildren: children,
        );

  static const String name = 'SelfCounting';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.JoinGame]
class JoinGame extends _i6.PageRouteInfo<void> {
  const JoinGame({List<_i6.PageRouteInfo>? children})
      : super(
          JoinGame.name,
          initialChildren: children,
        );

  static const String name = 'JoinGame';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EnterCode]
class EnterCode extends _i6.PageRouteInfo<void> {
  const EnterCode({List<_i6.PageRouteInfo>? children})
      : super(
          EnterCode.name,
          initialChildren: children,
        );

  static const String name = 'EnterCode';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
