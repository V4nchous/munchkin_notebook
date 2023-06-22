import 'package:flutter/material.dart';
import 'package:munchkin_notebook/features/choose_gender/presentation/widgets/choose_gender_group.dart';

class Player {
  final int id;
  final String name;
  final int level;
  final int bonus;
  final Gender gender;
  final Color color;

  Player({
    required this.id,
    required this.name,
    required this.level,
    required this.bonus,
    required this.gender,
    required this.color,
  });

  Player copyWith({
    int? id,
    String? name,
    int? level,
    int? bonus,
    Gender? gender,
    Color? color,
  }) {
    return Player(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
      bonus: bonus ?? this.bonus,
      gender: gender ?? this.gender,
      color: color ?? this.color,
    );
  }
}
