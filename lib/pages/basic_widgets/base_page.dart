import 'package:flutter/material.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/background.dart';

class MyBasePage extends StatelessWidget {
  const MyBasePage({
    super.key,
    required this.title,
    required this.body,
    required this.actions,
  });
  final Widget? title;
  final Widget? body;
  final Widget? actions;

  @override
  Widget build(BuildContext context) {
    return MyBackGround(
      child: Column(
        children: [
          title!,
          body!,
          actions!,
          const Padding(padding: EdgeInsets.only(bottom: 38)),
        ],
      ),
    );
  }
}
