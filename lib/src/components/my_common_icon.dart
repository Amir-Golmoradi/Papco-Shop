import 'package:flutter/material.dart';

class MyCommonIcon extends StatelessWidget {
  const MyCommonIcon({
    super.key,
    required this.icon,
    required this.size,
    required this.color,
  });

  final IconData icon;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
