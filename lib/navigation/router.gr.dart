// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:munchkin_notebook/pages/choose_gender.dart' as _i7;
import 'package:munchkin_notebook/pages/create_game.dart' as _i3;
import 'package:munchkin_notebook/pages/enter_code.dart' as _i1;
import 'package:munchkin_notebook/pages/enter_name.dart' as _i5;
import 'package:munchkin_notebook/pages/join_game.dart' as _i4;
import 'package:munchkin_notebook/pages/max_level.dart' as _i2;
import 'package:munchkin_notebook/pages/self_counting.dart' as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    EnterCode.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EnterCode(),
      );
    },
    MaxLevel.name: (routeData) {
      final args =
          routeData.argsAs<MaxLevelArgs>(orElse: () => const MaxLevelArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MaxLevel(key: args.key),
      );
    },
    CreateGame.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CreateGame(),
      );
    },
    JoinGame.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.JoinGame(),
      );
    },
    EnterName.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EnterName(),
      );
    },
    SelfCounting.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SelfCounting(),
      );
    },
    ChooseGender.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ChooseGender(),
      );
    },
  };
}

/// generated route for
/// [_i1.EnterCode]
class EnterCode extends _i8.PageRouteInfo<void> {
  const EnterCode({List<_i8.PageRouteInfo>? children})
      : super(
          EnterCode.name,
          initialChildren: children,
        );

  static const String name = 'EnterCode';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MaxLevel]
class MaxLevel extends _i8.PageRouteInfo<MaxLevelArgs> {
  MaxLevel({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          MaxLevel.name,
          args: MaxLevelArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MaxLevel';

  static const _i8.PageInfo<MaxLevelArgs> page =
      _i8.PageInfo<MaxLevelArgs>(name);
}

class MaxLevelArgs {
  const MaxLevelArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'MaxLevelArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.CreateGame]
class CreateGame extends _i8.PageRouteInfo<void> {
  const CreateGame({List<_i8.PageRouteInfo>? children})
      : super(
          CreateGame.name,
          initialChildren: children,
        );

  static const String name = 'CreateGame';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.JoinGame]
class JoinGame extends _i8.PageRouteInfo<void> {
  const JoinGame({List<_i8.PageRouteInfo>? children})
      : super(
          JoinGame.name,
          initialChildren: children,
        );

  static const String name = 'JoinGame';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EnterName]
class EnterName extends _i8.PageRouteInfo<void> {
  const EnterName({List<_i8.PageRouteInfo>? children})
      : super(
          EnterName.name,
          initialChildren: children,
        );

  static const String name = 'EnterName';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SelfCounting]
class SelfCounting extends _i8.PageRouteInfo<void> {
  const SelfCounting({List<_i8.PageRouteInfo>? children})
      : super(
          SelfCounting.name,
          initialChildren: children,
        );

  static const String name = 'SelfCounting';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ChooseGender]
class ChooseGender extends _i8.PageRouteInfo<void> {
  const ChooseGender({List<_i8.PageRouteInfo>? children})
      : super(
          ChooseGender.name,
          initialChildren: children,
        );

  static const String name = 'ChooseGender';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
