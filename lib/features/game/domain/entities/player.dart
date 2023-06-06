import 'package:flutter/material.dart';
import 'package:munchkin_notebook/features/choose_gender/choose_gender_group.dart';

class Player {
  int id;
  String name;
  int level;
  int bonus;
  Gender gender;
  Color color;

  Player({
    required this.id,
    required this.name,
    required this.level,
    required this.bonus,
    required this.gender,
    required this.color,
  });

  String get getPlayerName => name;
}
