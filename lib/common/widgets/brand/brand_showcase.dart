import 'package:a_store/common/widgets/brand/brand_card.dart';
import 'package:a_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ABrandShowCase extends StatelessWidget {
  const ABrandShowCase({
    super.key,
    required this.brandTitle,
    required this.brandLogo,
    this.noOfProducts = 5,
    required this.images,
  });

  final String brandTitle, brandLogo;
  final int noOfProducts;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ARoundedContainer(
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(ASizes.sm),
      showBorder: true,
      margin: const EdgeInsets.only(bottom: ASizes.spaceBtwItems),
      child: Column(
        children: [
          ABrandCard(
            showBorder: false,
            title: brandTitle,
            image: brandLogo,
            noOfProducts: noOfProducts,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: images
                .map((image) => brandTopProductImages(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImages(String image, context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return Expanded(
      child: ARoundedContainer(
        height: 80,
        margin: const EdgeInsets.symmetric(horizontal: ASizes.xs),
        padding: const EdgeInsets.all(ASizes.xs),
        backgroundColor: isDark ? AColors.darkerGrey : AColors.lightGrey,
        child: Image(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
