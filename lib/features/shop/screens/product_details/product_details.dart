import 'package:a_store/common/widgets/text/section_heading.dart';
import 'package:a_store/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:a_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:a_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:a_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import 'widgets/product_detail_image_slider.dart';

class ProductDetails extends StatelessWidget {
  final int index;

  const ProductDetails({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            AProductImageSlider(isDark: isDark, index: index),

            /// Product Details
            Padding(
              padding: const EdgeInsets.only(
                  left: ASizes.defaultSpace,
                  right: ASizes.defaultSpace,
                  bottom: ASizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Rating & Share
                  const ARatingAndShare(),

                  /// Price, Title, Stack, $ Brand
                  const AProductMetaData(),

                  /// Attributes
                  const AProductAttributes(),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  /// Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text(ATexts.checkOut)),
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  /// Description
                  const ASectionHeading(
                      headingTitle: 'Description', showActionButton: false),
                  const SizedBox(height: ASizes.spaceBtwItems),
                  const ReadMoreText(
                    "I have created the push notification application, I'm getting the message from GCM services but push notification sound is not working. I need to play sound when I'm getting notification.I have posted my code below anyone help me with this",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " show more",
                    trimExpandedText: " less",
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  const Divider(),
                  const SizedBox(height: ASizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ASectionHeading(
                        headingTitle: "Reviews(190)",
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () {
                            Get.toNamed('/productReviews');
                          },
                          icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
