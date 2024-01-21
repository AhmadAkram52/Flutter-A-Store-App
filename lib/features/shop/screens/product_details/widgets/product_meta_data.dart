import 'package:a_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:a_store/common/widgets/images/circular_image.dart';
import 'package:a_store/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:a_store/common/widgets/text/product_price_text.dart';
import 'package:a_store/common/widgets/text/product_title_text.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/enums.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AProductMetaData extends StatelessWidget {
  const AProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            ARoundedContainer(
              radius: ASizes.sm,
              padding: const EdgeInsets.symmetric(
                  horizontal: ASizes.sm, vertical: ASizes.xs),
              backgroundColor: AColors.secondary.withOpacity(.8),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(color: AColors.black),
              ),
            ),
            const SizedBox(width: ASizes.spaceBtwItems),

            /// Price
            Text(
              "\$ 502",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: ASizes.spaceBtwItems),
            const AProductPriceText(price: '342', isLarge: true),
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwItems / 1.5),

        /// Title
        const AProductTitle(title: "Ahmad Akram"),
        const SizedBox(height: ASizes.spaceBtwItems / 1.5),

        /// Stack Status
        Row(
          children: [
            const AProductTitle(title: "Status: "),
            const SizedBox(width: ASizes.spaceBtwItems / 1.5),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            ACircularImage(
              image: AImages.nikeLogo,
              height: 32,
              width: 32,
              overlyColor: isDark ? AColors.light : AColors.dark,
            ),
            const SizedBox(width: ASizes.spaceBtwItems / 1.5),
            const ABrandNameWithVerifyIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
