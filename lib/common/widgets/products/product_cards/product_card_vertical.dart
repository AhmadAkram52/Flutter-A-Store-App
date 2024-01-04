import 'package:a_store/common/styles/shadow_style.dart';
import 'package:a_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:a_store/common/widgets/icon/circular_icon.dart';
import 'package:a_store/common/widgets/images/rounded_image.dart';
import 'package:a_store/common/widgets/text/product_title_text.dart';
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
    return InkWell(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [AShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ASizes.productImageRadius),
          color: isDark ? AColors.darkerGrey : AColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ARoundedContainer(
              width: 180,
              padding: const EdgeInsets.all(ASizes.sm),
              backgroundColor: isDark ? AColors.darkerGrey : AColors.white,
              child: Stack(
                children: [
                  ARoundedImage(
                    imageUrl: AImages.productImage4,
                    height: ASizes.productImageSize,
                    backgroundColor:
                        isDark ? AColors.darkerGrey : AColors.white,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 05,
                    left: 05,
                    child: ARoundedContainer(
                      padding: const EdgeInsets.symmetric(
                          horizontal: ASizes.sm, vertical: ASizes.xs),
                      backgroundColor: AColors.secondary.withOpacity(.8),
                      radius: ASizes.sm,
                      child: Center(
                        child: Text(
                          '70%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.apply(color: AColors.black),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: ACircularIcon(
                      icon: Iconsax.heart5,
                      iconColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: ASizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AProductTitle(
                        title: "Green Nike Air Shoes", textSmall: true),
                    const SizedBox(height: ASizes.spaceBtwItems / 2),
                    Row(
                      children: [
                        Text(
                          "Nike",
                          style: Theme.of(context).textTheme.labelMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const SizedBox(width: ASizes.xs),
                        const Icon(Iconsax.verify5,
                            color: AColors.primary, size: ASizes.iconXs)
                      ],
                    ),
                    const SizedBox(height: ASizes.spaceBtwItems / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AProductPriceText(
                          price: '35.5',
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: AColors.dark,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(ASizes.cardRadiusMd),
                                bottomRight:
                                    Radius.circular(ASizes.productImageRadius),
                              )),
                          child: const SizedBox(
                              height: ASizes.iconLg * 1.2,
                              width: ASizes.iconLg * 1.2,
                              child: Center(
                                  child:
                                      Icon(Iconsax.add, color: AColors.white))),
                        )
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class AProductPriceText extends StatelessWidget {
  const AProductPriceText({
    super.key,
    required this.price,
    this.currencySign = '\$',
    this.maxLine = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String price, currencySign;
  final double maxLine;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      "\$35.5",
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
