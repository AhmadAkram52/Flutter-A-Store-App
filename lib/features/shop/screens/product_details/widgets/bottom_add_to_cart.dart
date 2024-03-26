import 'package:a_store/common/widgets/icon/circular_icon.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: ASizes.defaultSpace, vertical: ASizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: isDark ? AColors.darkerGrey : AColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(ASizes.cardRadiusLg),
            topRight: Radius.circular(ASizes.cardRadiusLg),
          )),
      child: Row(
        children: [
          ACircularIcon(
            icon: Iconsax.minus,
            backgroundColor: AColors.darkGrey,
            iconColor: Colors.white,
            width: 40,
            height: 40,
            onPress: () {},
          ),
          const SizedBox(width: ASizes.spaceBtwItems),
          Text("2", style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(width: ASizes.spaceBtwItems),
          ACircularIcon(
            icon: Iconsax.add,
            backgroundColor: AColors.black,
            iconColor: Colors.white,
            width: 40,
            height: 40,
            onPress: () {},
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(ASizes.md),
                  backgroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black)),
              child: const Text("Add To Cart"))
        ],
      ),
    );
  }
}
