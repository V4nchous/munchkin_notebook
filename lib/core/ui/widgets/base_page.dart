import 'package:flutter/material.dart';
import 'package:munchkin_notebook/core/ui/widgets/background.dart';

class MyBasePage extends StatelessWidget {
  const MyBasePage({
    super.key,
    required this.title,
    required this.body,
    required this.actions,
  });
  final Widget title;
  final Widget body;
  final Widget actions;

  @override
  Widget build(BuildContext context) {
    return MyBackGround(
      child: Column(
        children: [
          const SizedBox(height: 40),
          title,
          const SizedBox(height: 20),
          body,
          actions,
          const SizedBox(height: 38),
        ],
      ),
    );
  }
}
