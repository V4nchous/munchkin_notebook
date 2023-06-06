import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook/features/game/presentation/bloc/game_bloc.dart';

class ListOfPlayersGroup extends StatelessWidget {
  const ListOfPlayersGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          constraints: const BoxConstraints(minWidth: double.infinity),
          child: BlocBuilder<GameBloc, CreateGameState>(
            builder: (context, state) {
              return const Column(
                children: [
                  Row(
                    children: [],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
