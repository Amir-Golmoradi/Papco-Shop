import 'package:flutter/material.dart';

typedef ImageErrorBuilder = Widget Function(BuildContext, Object, StackTrace?)?;
typedef PlaceholderErrorBuilder = Widget Function(
    BuildContext, Object, StackTrace?)?;

class MyFadeInImage extends StatelessWidget {
  const MyFadeInImage({
    super.key,
    required this.image,
    required this.placeholder,
    this.fit = BoxFit.none,
    this.imageErrorBuilder,
    this.placeholderErrorBuilder,
    this.width = 0,
    this.height = 0,
    this.placeholderFit = BoxFit.none,
  });
  final BoxFit fit;
  final double width;
  final double height;
  final ImageProvider image;
  final BoxFit? placeholderFit;
  final ImageProvider placeholder;
  final ImageErrorBuilder imageErrorBuilder;
  final PlaceholderErrorBuilder placeholderErrorBuilder;
  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      fit: fit,
      width: width,
      image: image,
      height: height,
      placeholder: placeholder,
      imageErrorBuilder: imageErrorBuilder,
      placeholderErrorBuilder: placeholderErrorBuilder,
      placeholderFit: placeholderFit,
    );
  }
}
