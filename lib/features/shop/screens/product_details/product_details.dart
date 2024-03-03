import 'package:a_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:a_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:a_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widgets/product_detail_image_slider.dart';

class ProductDetails extends StatelessWidget {
  final int index;

  const ProductDetails({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            AProductImageSlider(isDark: isDark, index: index),

            /// Product Details
            const Padding(
              padding: EdgeInsets.only(
                  left: ASizes.defaultSpace,
                  right: ASizes.defaultSpace,
                  bottom: ASizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Rating & Share
                  ARatingAndShare(),

                  /// Price, Title, Stack, $ Brand
                  AProductMetaData(),

                  /// Attributes
                  AProductAttributes(),

                  /// Checkout Button
                  /// Description
                  /// Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
