import 'package:papco_shop/src/components/component.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:papco_shop/src/config/sizes/my_custom_size.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductsItemCategoryWidget extends StatelessWidget {
  const ProductsItemCategoryWidget({
    super.key,
    required this.list,
    required this.title,
    required this.id,
  });

  final List<dynamic>? list;
  final String? title;
  final String? id;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Adaptive.mm(7.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCommonTexts(
            text: title!,
            style: TextStyle(
              fontFamily: 'normal',
              fontSize: Responsive.isTablet(context) ? 21.sp : 19.sp,
            ),
            textAlign: TextAlign.right,
          ),
          GridView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: list!.length,
            itemBuilder: (context, i) {
              return GestureDetector(
                onTap: () {
                  //Todo: must navigate to ProductDetailScreen
                },
                child: Container(
                  padding: EdgeInsets.all(
                    Adaptive.mm(3.sp),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13.sp),
                    child: MyFadeInImage(
                      image: NetworkImage(list![i].image),
                      placeholder: const AssetImage(
                        'assets/images/logo.png',
                      ),
                      placeholderFit: BoxFit.contain,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              );
            },
          ),
          Gapped.lg,
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
                        color: Colors.red[400],
                        fontSize: Responsive.isTablet(context) ? 15.sp : 17.sp,
                        fontFamily: 'bold',
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
