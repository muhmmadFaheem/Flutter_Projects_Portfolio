import 'package:flutter/material.dart';

class NewText extends StatelessWidget {
  NewText(
      {super.key,
      required this.title,
      this.size = 20,
      this.color = Colors.black,
      required this.check});

  String title;
  double size;
  Color color;
  bool check;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: color,
        decoration: check ? TextDecoration.lineThrough  : TextDecoration.none,
      ),
    );
  }
}
