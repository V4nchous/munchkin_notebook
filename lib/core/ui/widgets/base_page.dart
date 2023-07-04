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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            title,
            const SizedBox(height: 20),
            body,
            actions,
          ],
        ),
      ),
    );
  }
}
