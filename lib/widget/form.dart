import 'package:flutter/material.dart';

class Text_inout extends StatelessWidget {
  Text_inout({super.key, required this.hidtext, required this.text});
  String hidtext;
  TextEditingController text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: TextField(
        controller: text,
        decoration:
            InputDecoration(border: InputBorder.none, hintText: hidtext),
      ),
    );
  }
}
