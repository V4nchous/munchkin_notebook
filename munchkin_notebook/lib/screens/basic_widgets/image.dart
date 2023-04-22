import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }
}
