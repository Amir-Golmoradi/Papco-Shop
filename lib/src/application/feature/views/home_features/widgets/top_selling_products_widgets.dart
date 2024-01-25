import 'package:papco_shop/src/components/component.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopSellingProductsWidgets extends StatelessWidget {
  const TopSellingProductsWidgets({
    Key? key,
    required this.list,
    required this.title,
    required this.id,
  }) : super(key: key);

  final List<dynamic>? list;
  final String? title;
  final String? id;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Adaptive.mm(3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCommonTexts(
            text: title!,
            style: TextStyle(
              fontFamily: 'normal',
              fontSize: Responsive.isTablet(context) ? 17.sp : 19.sp,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: list!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  //Todo: must navigate to ProductDetailScreen
                },
                child: Container(
                  padding: EdgeInsets.all(2.sp),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.sp),
                    child: MyFadeInImage(
                      image: NetworkImage(list![index].image!),
                      placeholder: const AssetImage(
                        'assets/images/logo.png',
                      ),
                      placeholderFit: BoxFit.cover,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
          id == null
              ? const SizedBox.shrink()
              : Center(
                  child: TextButton(
                    onPressed: () {
                      //Todo: must navigate to AllCategoryScreen
                    },
                    child: MyCommonTexts(
                      text: 'مشاهده همه',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: Responsive.isTablet(context) ? 15.sp : 16.sp,
                        fontFamily: 'bold',
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
