import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';
import 'package:papco_shop/src/application/feature/views/home_features/widgets/widgets.dart';
import 'package:papco_shop/src/components/component.dart';
import 'package:papco_shop/src/config/sizes/my_custom_size.dart';

import '../model/models.dart';

class HomeCompleteBody extends StatelessWidget {
  const HomeCompleteBody({
    Key? key,
    required this.homeModel,
  }) : super(key: key);

  final HomeModel homeModel;
  @override
  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: CustomScrollView(
        slivers: [
          const MySearchbar(),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopBannerWidget(homeModel: homeModel),
                    Gapped.md,
                    CarouselSliderWidget(homeModel: homeModel),
                    Gapped.md,
                    BrandsWidget(homeModel: homeModel),
                    Gapped.md,
                    AmazingWidget(homeModel: homeModel),
                    Gapped.md,
                    homeModel.random == null
                        ? const SizedBox.shrink()
                        : TopSellingProductsWidgets(
                            list: homeModel.random,
                            title: 'محصولات پر فروش',
                            id: null,
                          ),
                    Gapped.md,
                    CategoryBrandsWidget(
                      homeModel: homeModel,
                    ),
                    Gapped.md,
                    homeModel.colOne == null
                        ? const SizedBox.shrink()
                        : ProductsItemCategoryWidget(
                            list: homeModel.colOne!,
                            title: homeModel.colOneName,
                            id: homeModel.colOneId,
                          ),
                    Gapped.xl,
                    TwoBannersWidget(homeModel: homeModel),
                    Gapped.xl,
                    homeModel.colTwo == null
                        ? const SizedBox.shrink()
                        : ProductsItemCategoryWidget(
                            list: homeModel.colTwo!,
                            title: homeModel.colTwoName,
                            id: homeModel.colTwoId,
                          ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
