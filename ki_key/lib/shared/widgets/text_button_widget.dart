import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Function onTap;

  const TextButtonWidget(
      {Key key,
      @required this.text,
      this.fontWeight = FontWeight.bold,
      this.onTap,
      this.fontSize = 25})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
        ),
        onTap: onTap);
  }
}
