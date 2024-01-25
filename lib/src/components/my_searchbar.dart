import 'package:papco_shop/src/components/my_texts.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MySearchbar extends StatelessWidget {
  const MySearchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      pinned: false,
      forceElevated: true,
      toolbarHeight: Responsive.isTablet(context) ? 45.sp : 32.sp,
      flexibleSpace: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Adaptive.mm(5),
          vertical: Adaptive.mm(14.sp),
        ),
        child: const SearchBarClicker(),
      ),
    );
  }
}

class SearchBarClicker extends StatelessWidget {
  const SearchBarClicker({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.start,
        children: [
          Icon(
            CupertinoIcons.search,
            size: Adaptive.w(7),
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(width: 10),
          MyCommonTexts(
            text: 'جست و جو در',
            style: TextStyle(
              fontFamily: 'bold',
              fontSize: 19.sp,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(width: 3),
          MyCommonTexts(
            text: 'پاپکو',
            style: TextStyle(
              fontFamily: 'bold',
              fontSize: 19.sp,
              color: Colors.red[400],
            ),
          ),
        ],
      ),
    );
  }
}
