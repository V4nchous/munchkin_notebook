// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:munchkin_notebook/pages/choose_color.dart' as _i2;
import 'package:munchkin_notebook/pages/choose_gender.dart' as _i9;
import 'package:munchkin_notebook/pages/create_game.dart' as _i4;
import 'package:munchkin_notebook/pages/empty_game.dart' as _i5;
import 'package:munchkin_notebook/pages/enter_code.dart' as _i1;
import 'package:munchkin_notebook/pages/enter_name.dart' as _i7;
import 'package:munchkin_notebook/pages/join_game.dart' as _i6;
import 'package:munchkin_notebook/pages/max_level.dart' as _i3;
import 'package:munchkin_notebook/pages/self_counting.dart' as _i8;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    EnterCode.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EnterCode(),
      );
    },
    ChooseColor.name: (routeData) {
      final args = routeData.argsAs<ChooseColorArgs>(
          orElse: () => const ChooseColorArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ChooseColor(key: args.key),
      );
    },
    MaxLevel.name: (routeData) {
      final args =
          routeData.argsAs<MaxLevelArgs>(orElse: () => const MaxLevelArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.MaxLevel(key: args.key),
      );
    },
    CreateGame.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CreateGame(),
      );
    },
    EmptyGame.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyGame(),
      );
    },
    JoinGame.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.JoinGame(),
      );
    },
    EnterName.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EnterName(),
      );
    },
    SelfCounting.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SelfCounting(),
      );
    },
    ChooseGender.name: (routeData) {
      final args = routeData.argsAs<ChooseGenderArgs>(
          orElse: () => const ChooseGenderArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.ChooseGender(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.EnterCode]
class EnterCode extends _i10.PageRouteInfo<void> {
  const EnterCode({List<_i10.PageRouteInfo>? children})
      : super(
          EnterCode.name,
          initialChildren: children,
        );

  static const String name = 'EnterCode';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChooseColor]
class ChooseColor extends _i10.PageRouteInfo<ChooseColorArgs> {
  ChooseColor({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ChooseColor.name,
          args: ChooseColorArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChooseColor';

  static const _i10.PageInfo<ChooseColorArgs> page =
      _i10.PageInfo<ChooseColorArgs>(name);
}

class ChooseColorArgs {
  const ChooseColorArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'ChooseColorArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.MaxLevel]
class MaxLevel extends _i10.PageRouteInfo<MaxLevelArgs> {
  MaxLevel({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          MaxLevel.name,
          args: MaxLevelArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MaxLevel';

  static const _i10.PageInfo<MaxLevelArgs> page =
      _i10.PageInfo<MaxLevelArgs>(name);
}

class MaxLevelArgs {
  const MaxLevelArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'MaxLevelArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.CreateGame]
class CreateGame extends _i10.PageRouteInfo<void> {
  const CreateGame({List<_i10.PageRouteInfo>? children})
      : super(
          CreateGame.name,
          initialChildren: children,
        );

  static const String name = 'CreateGame';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EmptyGame]
class EmptyGame extends _i10.PageRouteInfo<void> {
  const EmptyGame({List<_i10.PageRouteInfo>? children})
      : super(
          EmptyGame.name,
          initialChildren: children,
        );

  static const String name = 'EmptyGame';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.JoinGame]
class JoinGame extends _i10.PageRouteInfo<void> {
  const JoinGame({List<_i10.PageRouteInfo>? children})
      : super(
          JoinGame.name,
          initialChildren: children,
        );

  static const String name = 'JoinGame';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EnterName]
class EnterName extends _i10.PageRouteInfo<void> {
  const EnterName({List<_i10.PageRouteInfo>? children})
      : super(
          EnterName.name,
          initialChildren: children,
        );

  static const String name = 'EnterName';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SelfCounting]
class SelfCounting extends _i10.PageRouteInfo<void> {
  const SelfCounting({List<_i10.PageRouteInfo>? children})
      : super(
          SelfCounting.name,
          initialChildren: children,
        );

  static const String name = 'SelfCounting';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ChooseGender]
class ChooseGender extends _i10.PageRouteInfo<ChooseGenderArgs> {
  ChooseGender({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ChooseGender.name,
          args: ChooseGenderArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChooseGender';

  static const _i10.PageInfo<ChooseGenderArgs> page =
      _i10.PageInfo<ChooseGenderArgs>(name);
}

class ChooseGenderArgs {
  const ChooseGenderArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'ChooseGenderArgs{key: $key}';
  }
}
