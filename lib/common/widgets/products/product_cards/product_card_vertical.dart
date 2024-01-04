import 'package:a_store/common/styles/shadow_style.dart';
import 'package:a_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:a_store/common/widgets/text/section_heading.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AProductCardVertical extends StatelessWidget {
  const AProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [AShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(ASizes.productImageRadius),
        color: isDark ? AColors.darkerGrey : AColors.white,
      ),
      child: Card(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                  image: AssetImage(AImages.productImage1),
                  height: ASizes.productItemHeight,
                  width: ASizes.productImageSize,
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.heart,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: ACircularContainer(
                    width: 50,
                    height: 30,
                    backgroundColor: AColors.secondary,
                    radius: 10,
                    child: Center(
                      child: Text(
                        '70%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.apply(color: AColors.dark),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const ASectionHeading(
              headingTitle: 'Green Nike Sport Shoes',
              showActionButton: false,
            )
          ],
        ),
      ),
    );
  }
}
