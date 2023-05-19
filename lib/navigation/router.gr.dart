// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:munchkin_notebook/pages/basic_widgets/page_units/choose_gender_group.dart'
    as _i11;
import 'package:munchkin_notebook/pages/choose_color.dart' as _i1;
import 'package:munchkin_notebook/pages/choose_gender.dart' as _i2;
import 'package:munchkin_notebook/pages/create_game.dart' as _i3;
import 'package:munchkin_notebook/pages/enter_code.dart' as _i4;
import 'package:munchkin_notebook/pages/enter_name.dart' as _i5;
import 'package:munchkin_notebook/pages/join_game.dart' as _i6;
import 'package:munchkin_notebook/pages/max_level.dart' as _i7;
import 'package:munchkin_notebook/pages/self_counting.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    ChooseColor.name: (routeData) {
      final args = routeData.argsAs<ChooseColorArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ChooseColor(
          key: args.key,
          playerName: args.playerName,
          playerGender: args.playerGender,
        ),
      );
    },
    ChooseGender.name: (routeData) {
      final args = routeData.argsAs<ChooseGenderArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ChooseGender(
          key: args.key,
          playerName: args.playerName,
        ),
      );
    },
    CreateGame.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CreateGame(),
      );
    },
    EnterCode.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EnterCode(),
      );
    },
    EnterName.name: (routeData) {
      final args =
          routeData.argsAs<EnterNameArgs>(orElse: () => const EnterNameArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EnterName(key: args.key),
      );
    },
    JoinGame.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.JoinGame(),
      );
    },
    MaxLevel.name: (routeData) {
      final args =
          routeData.argsAs<MaxLevelArgs>(orElse: () => const MaxLevelArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.MaxLevel(key: args.key),
      );
    },
    SelfCounting.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SelfCounting(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChooseColor]
class ChooseColor extends _i9.PageRouteInfo<ChooseColorArgs> {
  ChooseColor({
    _i10.Key? key,
    required String playerName,
    required _i11.Gender playerGender,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          ChooseColor.name,
          args: ChooseColorArgs(
            key: key,
            playerName: playerName,
            playerGender: playerGender,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseColor';

  static const _i9.PageInfo<ChooseColorArgs> page =
      _i9.PageInfo<ChooseColorArgs>(name);
}

class ChooseColorArgs {
  const ChooseColorArgs({
    this.key,
    required this.playerName,
    required this.playerGender,
  });

  final _i10.Key? key;

  final String playerName;

  final _i11.Gender playerGender;

  @override
  String toString() {
    return 'ChooseColorArgs{key: $key, playerName: $playerName, playerGender: $playerGender}';
  }
}

/// generated route for
/// [_i2.ChooseGender]
class ChooseGender extends _i9.PageRouteInfo<ChooseGenderArgs> {
  ChooseGender({
    _i10.Key? key,
    required String playerName,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          ChooseGender.name,
          args: ChooseGenderArgs(
            key: key,
            playerName: playerName,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseGender';

  static const _i9.PageInfo<ChooseGenderArgs> page =
      _i9.PageInfo<ChooseGenderArgs>(name);
}

class ChooseGenderArgs {
  const ChooseGenderArgs({
    this.key,
    required this.playerName,
  });

  final _i10.Key? key;

  final String playerName;

  @override
  String toString() {
    return 'ChooseGenderArgs{key: $key, playerName: $playerName}';
  }
}

/// generated route for
/// [_i3.CreateGame]
class CreateGame extends _i9.PageRouteInfo<void> {
  const CreateGame({List<_i9.PageRouteInfo>? children})
      : super(
          CreateGame.name,
          initialChildren: children,
        );

  static const String name = 'CreateGame';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EnterCode]
class EnterCode extends _i9.PageRouteInfo<void> {
  const EnterCode({List<_i9.PageRouteInfo>? children})
      : super(
          EnterCode.name,
          initialChildren: children,
        );

  static const String name = 'EnterCode';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EnterName]
class EnterName extends _i9.PageRouteInfo<EnterNameArgs> {
  EnterName({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          EnterName.name,
          args: EnterNameArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterName';

  static const _i9.PageInfo<EnterNameArgs> page =
      _i9.PageInfo<EnterNameArgs>(name);
}

class EnterNameArgs {
  const EnterNameArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'EnterNameArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.JoinGame]
class JoinGame extends _i9.PageRouteInfo<void> {
  const JoinGame({List<_i9.PageRouteInfo>? children})
      : super(
          JoinGame.name,
          initialChildren: children,
        );

  static const String name = 'JoinGame';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MaxLevel]
class MaxLevel extends _i9.PageRouteInfo<MaxLevelArgs> {
  MaxLevel({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          MaxLevel.name,
          args: MaxLevelArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MaxLevel';

  static const _i9.PageInfo<MaxLevelArgs> page =
      _i9.PageInfo<MaxLevelArgs>(name);
}

class MaxLevelArgs {
  const MaxLevelArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'MaxLevelArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.SelfCounting]
class SelfCounting extends _i9.PageRouteInfo<void> {
  const SelfCounting({List<_i9.PageRouteInfo>? children})
      : super(
          SelfCounting.name,
          initialChildren: children,
        );

  static const String name = 'SelfCounting';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
