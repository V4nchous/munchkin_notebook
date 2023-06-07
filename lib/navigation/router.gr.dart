// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;
import 'package:munchkin_notebook/features/choose_color/presentation/choose_color.dart'
    as _i1;
import 'package:munchkin_notebook/features/choose_gender/choose_gender_group.dart'
    as _i16;
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
import 'package:munchkin_notebook/features/game/presentation/pages/game_options/presentation/game_options.dart'
    as _i7;
import 'package:munchkin_notebook/features/game/presentation/pages/game_page.dart'
    as _i8;
import 'package:munchkin_notebook/features/game/presentation/pages/list_of_players/presentation/list_of_players.dart'
    as _i12;
import 'package:munchkin_notebook/features/game/presentation/pages/player/presentation/player_page.dart'
    as _i13;
import 'package:munchkin_notebook/features/join_game/presentation/join_game.dart'
    as _i9;
import 'package:munchkin_notebook/features/max_level/presentation/max_level.dart'
    as _i10;
import 'package:munchkin_notebook/features/self_counting/presentation/self_counting.dart'
    as _i11;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    ChooseColor.name: (routeData) {
      final args = routeData.argsAs<ChooseColorArgs>();
      return _i14.AutoRoutePage<dynamic>(
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
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ChooseGender(
          key: args.key,
          playerName: args.playerName,
        ),
      );
    },
    CreateGame.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CreateGame(),
      );
    },
    EmptyGame.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyGame(),
      );
    },
    EnterCode.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EnterCode(),
      );
    },
    EnterName.name: (routeData) {
      final args =
          routeData.argsAs<EnterNameArgs>(orElse: () => const EnterNameArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.EnterName(key: args.key),
      );
    },
    GameOptions.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.GameOptions(),
      );
    },
    GameRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.GamePage(),
      );
    },
    JoinGame.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.JoinGame(),
      );
    },
    MaxLevel.name: (routeData) {
      final args =
          routeData.argsAs<MaxLevelArgs>(orElse: () => const MaxLevelArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.MaxLevel(key: args.key),
      );
    },
    SelfCounting.name: (routeData) {
      final args = routeData.argsAs<SelfCountingArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SelfCounting(
          key: args.key,
          maxLevel: args.maxLevel,
        ),
      );
    },
    ListOfPlayers.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ListOfPlayers(),
      );
    },
    PlayerRoute.name: (routeData) {
      final args = routeData.argsAs<PlayerRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.PlayerPage(
          key: args.key,
          index: args.index,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ChooseColor]
class ChooseColor extends _i14.PageRouteInfo<ChooseColorArgs> {
  ChooseColor({
    _i15.Key? key,
    required String playerName,
    required _i16.Gender playerGender,
    List<_i14.PageRouteInfo>? children,
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

  static const _i14.PageInfo<ChooseColorArgs> page =
      _i14.PageInfo<ChooseColorArgs>(name);
}

class ChooseColorArgs {
  const ChooseColorArgs({
    this.key,
    required this.playerName,
    required this.playerGender,
  });

  final _i15.Key? key;

  final String playerName;

  final _i16.Gender playerGender;

  @override
  String toString() {
    return 'ChooseColorArgs{key: $key, playerName: $playerName, playerGender: $playerGender}';
  }
}

/// generated route for
/// [_i2.ChooseGender]
class ChooseGender extends _i14.PageRouteInfo<ChooseGenderArgs> {
  ChooseGender({
    _i15.Key? key,
    required String playerName,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ChooseGender.name,
          args: ChooseGenderArgs(
            key: key,
            playerName: playerName,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseGender';

  static const _i14.PageInfo<ChooseGenderArgs> page =
      _i14.PageInfo<ChooseGenderArgs>(name);
}

class ChooseGenderArgs {
  const ChooseGenderArgs({
    this.key,
    required this.playerName,
  });

  final _i15.Key? key;

  final String playerName;

  @override
  String toString() {
    return 'ChooseGenderArgs{key: $key, playerName: $playerName}';
  }
}

/// generated route for
/// [_i3.CreateGame]
class CreateGame extends _i14.PageRouteInfo<void> {
  const CreateGame({List<_i14.PageRouteInfo>? children})
      : super(
          CreateGame.name,
          initialChildren: children,
        );

  static const String name = 'CreateGame';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EmptyGame]
class EmptyGame extends _i14.PageRouteInfo<void> {
  const EmptyGame({List<_i14.PageRouteInfo>? children})
      : super(
          EmptyGame.name,
          initialChildren: children,
        );

  static const String name = 'EmptyGame';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EnterCode]
class EnterCode extends _i14.PageRouteInfo<void> {
  const EnterCode({List<_i14.PageRouteInfo>? children})
      : super(
          EnterCode.name,
          initialChildren: children,
        );

  static const String name = 'EnterCode';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.EnterName]
class EnterName extends _i14.PageRouteInfo<EnterNameArgs> {
  EnterName({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          EnterName.name,
          args: EnterNameArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterName';

  static const _i14.PageInfo<EnterNameArgs> page =
      _i14.PageInfo<EnterNameArgs>(name);
}

class EnterNameArgs {
  const EnterNameArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'EnterNameArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.GameOptions]
class GameOptions extends _i14.PageRouteInfo<void> {
  const GameOptions({List<_i14.PageRouteInfo>? children})
      : super(
          GameOptions.name,
          initialChildren: children,
        );

  static const String name = 'GameOptions';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.GamePage]
class GameRoute extends _i14.PageRouteInfo<void> {
  const GameRoute({List<_i14.PageRouteInfo>? children})
      : super(
          GameRoute.name,
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.JoinGame]
class JoinGame extends _i14.PageRouteInfo<void> {
  const JoinGame({List<_i14.PageRouteInfo>? children})
      : super(
          JoinGame.name,
          initialChildren: children,
        );

  static const String name = 'JoinGame';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MaxLevel]
class MaxLevel extends _i14.PageRouteInfo<MaxLevelArgs> {
  MaxLevel({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          MaxLevel.name,
          args: MaxLevelArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MaxLevel';

  static const _i14.PageInfo<MaxLevelArgs> page =
      _i14.PageInfo<MaxLevelArgs>(name);
}

class MaxLevelArgs {
  const MaxLevelArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'MaxLevelArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.SelfCounting]
class SelfCounting extends _i14.PageRouteInfo<SelfCountingArgs> {
  SelfCounting({
    _i15.Key? key,
    required int maxLevel,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SelfCounting.name,
          args: SelfCountingArgs(
            key: key,
            maxLevel: maxLevel,
          ),
          initialChildren: children,
        );

  static const String name = 'SelfCounting';

  static const _i14.PageInfo<SelfCountingArgs> page =
      _i14.PageInfo<SelfCountingArgs>(name);
}

class SelfCountingArgs {
  const SelfCountingArgs({
    this.key,
    required this.maxLevel,
  });

  final _i15.Key? key;

  final int maxLevel;

  @override
  String toString() {
    return 'SelfCountingArgs{key: $key, maxLevel: $maxLevel}';
  }
}

/// generated route for
/// [_i12.ListOfPlayers]
class ListOfPlayers extends _i14.PageRouteInfo<void> {
  const ListOfPlayers({List<_i14.PageRouteInfo>? children})
      : super(
          ListOfPlayers.name,
          initialChildren: children,
        );

  static const String name = 'ListOfPlayers';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PlayerPage]
class PlayerRoute extends _i14.PageRouteInfo<PlayerRouteArgs> {
  PlayerRoute({
    _i15.Key? key,
    required int index,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          PlayerRoute.name,
          args: PlayerRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'PlayerRoute';

  static const _i14.PageInfo<PlayerRouteArgs> page =
      _i14.PageInfo<PlayerRouteArgs>(name);
}

class PlayerRouteArgs {
  const PlayerRouteArgs({
    this.key,
    required this.index,
  });

  final _i15.Key? key;

  final int index;

  @override
  String toString() {
    return 'PlayerRouteArgs{key: $key, index: $index}';
  }
}
