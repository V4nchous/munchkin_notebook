import 'package:flutter/material.dart';
import 'package:munchkin_notebook/pages/basic_widgets/features/screen_scale.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    double screenScale = getScreenScale(context);
    return Image.asset(
      path,
      fit: BoxFit.cover,
      height: 160 * screenScale,
    );
  }
}
