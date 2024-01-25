import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyIntroTile extends StatelessWidget {
  const MyIntroTile({
    Key? key,
    this.image = '',
    this.title = '',
    this.description = '',
  }) : super(key: key);

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
         Gap(8.sp),
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'bold',
            fontSize: 21,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          description,
          style: const TextStyle(
            fontFamily: 'bold',
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
