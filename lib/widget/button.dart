import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonProduct extends StatelessWidget {
  ButtonProduct(
      {super.key,
      required this.backgrounColors,
      required this.bordercolos,
      required this.colorstext,
      required this.name});
  String name;
  Color colorstext;
  Color bordercolos;
  Color backgrounColors;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.3,
      height: 40,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 4, color: Colors.grey.withOpacity(0.5))
          ],
          border: Border.all(width: 1, color: bordercolos),
          borderRadius: BorderRadius.circular(5),
          color: backgrounColors),
      child: Center(
          child: Text(
        name,
        style: TextStyle(
            color: colorstext, fontSize: 16, fontWeight: FontWeight.bold),
      )),
    );
  }
}
