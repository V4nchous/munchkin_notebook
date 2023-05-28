// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:munchkin_notebook/features/choose_gender/choose_gender_group.dart'
    as _i12;
import 'package:munchkin_notebook/features/choose_color/presentation/choose_color.dart'
    as _i1;
import 'package:munchkin_notebook/features/choose_gender/presentation/choose_gender.dart'
    as _i2;
import 'package:munchkin_notebook/features/create_game/presentation/create_game.dart'
    as _i3;
import 'package:munchkin_notebook/features/empty_game/presentation/empty_game.dart'
    as _i4;
import 'package:munchkin_notebook/features/enter_code/presentation/enter_code.dart'
    as _i5;
import 'package:munchkin_notebook/features/enter_name/presentation/enter_name.dart'
    as _i6;
import 'package:munchkin_notebook/features/join_game/presentation/join_game.dart'
    as _i7;
import 'package:munchkin_notebook/features/max_level/presentation/max_level.dart'
    as _i8;
import 'package:munchkin_notebook/features/self_counting/presentation/self_counting.dart'
    as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    ChooseColor.name: (routeData) {
      final args = routeData.argsAs<ChooseColorArgs>();
      return _i10.AutoRoutePage<dynamic>(
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
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ChooseGender(
          key: args.key,
          playerName: args.playerName,
        ),
      );
    },
    CreateGame.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CreateGame(),
      );
    },
    EmptyGame.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyGame(),
      );
    },
    EnterCode.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EnterCode(),
      );
    },
    EnterName.name: (routeData) {
      final args =
          routeData.argsAs<EnterNameArgs>(orElse: () => const EnterNameArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.EnterName(key: args.key),
      );
    },
    JoinGame.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.JoinGame(),
      );
    },
    MaxLevel.name: (routeData) {
      final args =
          routeData.argsAs<MaxLevelArgs>(orElse: () => const MaxLevelArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.MaxLevel(key: args.key),
      );
    },
    SelfCounting.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SelfCounting(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChooseColor]
class ChooseColor extends _i10.PageRouteInfo<ChooseColorArgs> {
  ChooseColor({
    _i11.Key? key,
    required String playerName,
    required _i12.Gender playerGender,
    List<_i10.PageRouteInfo>? children,
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

  static const _i10.PageInfo<ChooseColorArgs> page =
      _i10.PageInfo<ChooseColorArgs>(name);
}

class ChooseColorArgs {
  const ChooseColorArgs({
    this.key,
    required this.playerName,
    required this.playerGender,
  });

  final _i11.Key? key;

  final String playerName;

  final _i12.Gender playerGender;

  @override
  String toString() {
    return 'ChooseColorArgs{key: $key, playerName: $playerName, playerGender: $playerGender}';
  }
}

/// generated route for
/// [_i2.ChooseGender]
class ChooseGender extends _i10.PageRouteInfo<ChooseGenderArgs> {
  ChooseGender({
    _i11.Key? key,
    required String playerName,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ChooseGender.name,
          args: ChooseGenderArgs(
            key: key,
            playerName: playerName,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseGender';

  static const _i10.PageInfo<ChooseGenderArgs> page =
      _i10.PageInfo<ChooseGenderArgs>(name);
}

class ChooseGenderArgs {
  const ChooseGenderArgs({
    this.key,
    required this.playerName,
  });

  final _i11.Key? key;

  final String playerName;

  @override
  String toString() {
    return 'ChooseGenderArgs{key: $key, playerName: $playerName}';
  }
}

/// generated route for
/// [_i3.CreateGame]
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
/// [_i4.EmptyGame]
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
/// [_i5.EnterCode]
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
/// [_i6.EnterName]
class EnterName extends _i10.PageRouteInfo<EnterNameArgs> {
  EnterName({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          EnterName.name,
          args: EnterNameArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterName';

  static const _i10.PageInfo<EnterNameArgs> page =
      _i10.PageInfo<EnterNameArgs>(name);
}

class EnterNameArgs {
  const EnterNameArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'EnterNameArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.JoinGame]
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
/// [_i8.MaxLevel]
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
/// [_i9.SelfCounting]
class SelfCounting extends _i10.PageRouteInfo<void> {
  const SelfCounting({List<_i10.PageRouteInfo>? children})
      : super(
          SelfCounting.name,
          initialChildren: children,
        );

  static const String name = 'SelfCounting';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
