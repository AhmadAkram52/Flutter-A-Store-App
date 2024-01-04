import 'package:a_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:a_store/common/widgets/layout/gridview_layout.dart';
import 'package:a_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:a_store/common/widgets/searchbar/search_bar.dart';
import 'package:a_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:a_store/features/shop/screens/home/widgets/home_categories_list.dart';
import 'package:a_store/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// HomeAppBar
                  AHomeAppBar(),
                  SizedBox(height: ASizes.spaceBtwSections),

                  /// SearchBar
                  ASearchBar(),
                  SizedBox(height: ASizes.spaceBtwSections),

                  /// Categories
                  AHomeCategoriesList()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ASizes.defaultSpace),
              child: Column(
                children: [
                  const HomePromoSlider(banners: [
                    AImages.promoBanner1,
                    AImages.promoBanner2,
                    AImages.promoBanner3,
                  ]),
                  const SizedBox(height: ASizes.spaceBtwItems),
                  AGridViewLayout(
                    itemCounter: 10,
                    itemBuilder: (context, a) => const AProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
