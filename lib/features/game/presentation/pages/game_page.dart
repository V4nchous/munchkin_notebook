import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';

import 'package:munchkin_notebook/features/base/title.dart';
import 'package:munchkin_notebook/features/base/base_page.dart';
import 'package:munchkin_notebook/features/base/buttons.dart';
import 'package:munchkin_notebook/navigation/router.gr.dart';

@RoutePage()
class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBasePage(
        title: const MyTitle(text: 'Игра'),
        body: Expanded(
          child: BlocBuilder<GameBloc, CreateGameState>(
            bloc: gameBloc,
            builder: (context, state) {
              if (state is GameCreated) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('max level: ${state.game.maxLevel}',
                        style: const TextStyle(fontSize: 50)),
                    Text('is GM: ${state.game.isGameMaster}',
                        style: const TextStyle(fontSize: 50)),
                  ],
                );
              } else {
                return const Text('Game is not created yet');
              }
            },
          ),
        ),
        actions: MyPrimaryButton(
          text: 'Изменить максимальный уровень',
          action: () {
            AutoRouter.of(context).push(MaxLevel());
          },
        ),
      ),
    );
  }
}
