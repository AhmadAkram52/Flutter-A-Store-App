import 'package:a_store/common/widgets/bars/appbar.dart';
import 'package:a_store/common/widgets/bars/tabbar.dart';
import 'package:a_store/common/widgets/brand/brand_card.dart';
import 'package:a_store/common/widgets/layout/gridview_layout.dart';
import 'package:a_store/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:a_store/common/widgets/searchbar/search_bar.dart';
import 'package:a_store/common/widgets/text/section_heading.dart';
import 'package:a_store/features/shop/models/brand/brands_list.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/enums.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widget/store_category_tab.dart';

class AStore extends StatelessWidget {
  const AStore({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 8,
      child: Scaffold(
          appBar: AAppBar(
            title: Text(
              ATexts.store,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            action: [
              ACartCounterIcon(
                onPressed: () {},
                iconColor: isDark ? AColors.light : AColors.dark,
              )
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: isDark ? AColors.dark : AColors.light,
                  expandedHeight: 410,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(ASizes.defaultSpace),
                    child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          const SizedBox(height: ASizes.spaceBtwItems),
                          const ASearchBar(
                            hintText: 'Search In Shop',
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(height: ASizes.spaceBtwSections),
                          const ASectionHeading(
                              headingTitle: ATexts.featuredBrand),
                          const SizedBox(height: ASizes.spaceBtwItems / 1.5),
                          AGridViewLayout(
                            itemCounter: 4,
                            mainAxisExtent: 65,
                            itemBuilder: (context, index) => ABrandCard(
                              title: brandsList[0].title,
                              image: brandsList[0].image,
                              noOfProducts: 33 * (index + 2),
                              textSizes: TextSizes.large,
                            ),
                          ),
                        ]),
                  ),
                  bottom: const ATabBar(
                    tabs: [
                      Tab(child: Text(ATexts.shoes)),
                      Tab(child: Text(ATexts.sport)),
                      Tab(child: Text(ATexts.cloth)),
                      Tab(child: Text(ATexts.cosmetics)),
                      Tab(child: Text(ATexts.electronics)),
                      Tab(child: Text(ATexts.animal)),
                      Tab(child: Text(ATexts.furniture)),
                      Tab(child: Text(ATexts.jewelery)),
                    ],
                  ),
                )
              ];
            },
            body: const TabBarView(
              children: [
                ACategoryTab(),
                ACategoryTab(),
                ACategoryTab(),
                ACategoryTab(),
                ACategoryTab(),
                ACategoryTab(),
                ACategoryTab(),
                ACategoryTab(),
              ],
            ),
          )),
    );
  }
}
