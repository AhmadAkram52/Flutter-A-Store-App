import 'package:a_store/common/widgets/appbar/appbar.dart';
import 'package:a_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:a_store/common/widgets/images/circular_image.dart';
import 'package:a_store/common/widgets/layout/gridview_layout.dart';
import 'package:a_store/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:a_store/common/widgets/searchbar/search_bar.dart';
import 'package:a_store/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:a_store/common/widgets/text/section_heading.dart';
import 'package:a_store/features/shop/models/brand/brands_list.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/enums.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AStore extends StatelessWidget {
  const AStore({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return SafeArea(
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
                  expandedHeight: 440,
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
                            itemBuilder: (context, index) => ABrandCardWithLogo(
                              list: brandsList,
                              index: index,
                            ),
                          )
                        ]),
                  ),
                )
              ];
            },
            body: const SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: ASizes.defaultSpace),
                  ASearchBar(
                    hintText: 'Search In Shop',
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class ABrandCardWithLogo extends StatelessWidget {
  const ABrandCardWithLogo({
    super.key,
    required this.index,
    required this.list,
  });

  final int index;
  final List<ABrandList> list;

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: () {},
      child: ARoundedContainer(
        padding: const EdgeInsets.all(ASizes.sm),
        showBorder: true,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///Icon
            Flexible(
              child: ACircularImage(
                image: brandsList[index].image,
                backgroundColor: Colors.transparent,
                overlyColor: isDark ? AColors.white : AColors.black,
              ),
            ),
            const SizedBox(width: ASizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ABrandNameWithVerifyIcon(
                    title: brandsList[index].title,
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "255 Products",
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
