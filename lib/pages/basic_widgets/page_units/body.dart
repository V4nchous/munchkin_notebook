import 'package:flutter/material.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/description.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/enter_code_group.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/image.dart';
import 'package:munchkin_notebook/pages/basic_widgets/page_units/lvl_selection_group.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    super.key,
    this.path,
    this.codeValues,
    this.lvl,
    required this.text,
  });

  final String? path;
  final String text;
  final List<int>? codeValues;
  final int? lvl;

  @override
  Widget build(BuildContext context) {
    if (path != null) {
      return Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          MyImage(path: path!),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Expanded(
            child: MyDescription(text: text),
          ),
        ],
      );
    } else if (lvl != null) {
      return Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          LvlSelectionGroup(),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Expanded(
            child: MyDescription(text: text),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          EnterCodeGroup(),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Expanded(
            child: MyDescription(text: text),
          ),
        ],
      );
    }
  }
}
