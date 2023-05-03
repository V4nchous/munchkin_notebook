// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:munchkin_notebook/pages/create_game.dart' as _i3;
import 'package:munchkin_notebook/pages/enter_code.dart' as _i1;
import 'package:munchkin_notebook/pages/enter_name.dart' as _i5;
import 'package:munchkin_notebook/pages/join_game.dart' as _i4;
import 'package:munchkin_notebook/pages/max_level.dart' as _i2;
import 'package:munchkin_notebook/pages/self_counting.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    EnterCode.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EnterCode(),
      );
    },
    MaxLevel.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MaxLevel(),
      );
    },
    CreateGame.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CreateGame(),
      );
    },
    JoinGame.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.JoinGame(),
      );
    },
    EnterName.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EnterName(),
      );
    },
    SelfCounting.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SelfCounting(),
      );
    },
  };
}

/// generated route for
/// [_i1.EnterCode]
class EnterCode extends _i7.PageRouteInfo<void> {
  const EnterCode({List<_i7.PageRouteInfo>? children})
      : super(
          EnterCode.name,
          initialChildren: children,
        );

  static const String name = 'EnterCode';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MaxLevel]
class MaxLevel extends _i7.PageRouteInfo<void> {
  const MaxLevel({List<_i7.PageRouteInfo>? children})
      : super(
          MaxLevel.name,
          initialChildren: children,
        );

  static const String name = 'MaxLevel';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CreateGame]
class CreateGame extends _i7.PageRouteInfo<void> {
  const CreateGame({List<_i7.PageRouteInfo>? children})
      : super(
          CreateGame.name,
          initialChildren: children,
        );

  static const String name = 'CreateGame';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.JoinGame]
class JoinGame extends _i7.PageRouteInfo<void> {
  const JoinGame({List<_i7.PageRouteInfo>? children})
      : super(
          JoinGame.name,
          initialChildren: children,
        );

  static const String name = 'JoinGame';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EnterName]
class EnterName extends _i7.PageRouteInfo<void> {
  const EnterName({List<_i7.PageRouteInfo>? children})
      : super(
          EnterName.name,
          initialChildren: children,
        );

  static const String name = 'EnterName';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SelfCounting]
class SelfCounting extends _i7.PageRouteInfo<void> {
  const SelfCounting({List<_i7.PageRouteInfo>? children})
      : super(
          SelfCounting.name,
          initialChildren: children,
        );

  static const String name = 'SelfCounting';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
