import 'package:flutter/material.dart';
import 'package:munchkin_notebook/screens/basic_widgets/features/screen_scale.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return SizedBox(
      height: 160 * screenScale,
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }
}
