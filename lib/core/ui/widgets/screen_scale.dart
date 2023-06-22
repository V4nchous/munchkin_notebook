import 'package:flutter/material.dart';

double getScreenScale(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  double baseWidth = 320;
  double baseHeight = 568;
  double screenScale = (height / baseHeight + width / baseWidth) / 2;
  return screenScale;
}
