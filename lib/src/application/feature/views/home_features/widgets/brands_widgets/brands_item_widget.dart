import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';
import 'package:papco_shop/src/components/component.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BrandsItemWidget extends StatelessWidget {
  const BrandsItemWidget({
    super.key,
    required this.homeModel,
    required this.index,
  });
  final HomeModel homeModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final url = homeModel.brands![index].link!;

        if (await canLaunchUrlString(url)) {
          launchUrlString(url);
        }
      },
      child: Container(
        padding: EdgeInsets.all(6.sp),
        decoration: ShapeDecoration(
          color: Colors.white,
          shadows: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[600]!,
              offset: const Offset(0.1, 9),
              blurRadius: 4,
              spreadRadius: -4,
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: MyFadeInImage(
          image: NetworkImage(homeModel.brands![index].image!),
          placeholder: const AssetImage(
            'assets/images/logo.png',
          ),
          fit: BoxFit.contain,
          placeholderFit: BoxFit.cover,
        ),
      ),
    );
  }
}
