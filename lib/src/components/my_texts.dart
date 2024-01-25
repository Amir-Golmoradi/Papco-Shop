import 'package:flutter/material.dart';

class MyCommonTexts extends StatelessWidget {
  const MyCommonTexts({
    Key? key,
    required this.text,
    this.style,
    this.maxLines = 1,
    this.textAlign = TextAlign.justify,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final int maxLines;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
