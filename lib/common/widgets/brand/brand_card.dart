import 'package:a_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:a_store/common/widgets/images/circular_image.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/enums.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../text/brand_title_with_verified_icon.dart';

class ABrandCard extends StatelessWidget {
  const ABrandCard({
    super.key,
    required this.image,
    required this.title,
    this.showBorder = true,
    required this.noOfProducts,
    this.textSizes = TextSizes.large,
  });

  final String image, title;
  final bool showBorder;
  final int noOfProducts;
  final TextSizes textSizes;

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: () {},
      child: ARoundedContainer(
        padding: const EdgeInsets.all(ASizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///Icon
            Flexible(
              child: ACircularImage(
                image: image,
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
                    title: title,
                    brandTextSize: textSizes,
                    // textColor: isDark ? AColors.white : AColors.black,
                  ),
                  Text(
                    "$noOfProducts Products",
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
