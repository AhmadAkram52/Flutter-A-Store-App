import 'package:a_store/common/widgets/appbar/appbar.dart';
import 'package:a_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:a_store/common/widgets/images/circular_image.dart';
import 'package:a_store/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:a_store/common/widgets/searchbar/search_bar.dart';
import 'package:a_store/common/widgets/text/section_heading.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/image_strings.dart';
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
                          const ASearchBar(hintText: 'Search In Shop'),
                          const SizedBox(height: ASizes.spaceBtwSections),
                          const ASectionHeading(
                              headingTitle: ATexts.featuredBrand),
                          const SizedBox(height: ASizes.spaceBtwItems / 1.5),
                          ARoundedContainer(
                            padding: const EdgeInsets.all(ASizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                ///Icon
                                ACircularImage(
                                  image: AImages.nikeLogo,
                                  backgroundColor: Colors.transparent,
                                  overlyColor:
                                      isDark ? AColors.white : AColors.black,
                                ),
                                SizedBox(width: ASizes.spaceBtwItems / 2),
                                Column(
                                  children: [
                                    Text("Ahmad"),
                                    Text("Ahmad"),
                                  ],
                                ),
                              ],
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
