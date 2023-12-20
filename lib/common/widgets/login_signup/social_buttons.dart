import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ASocialButtons extends StatelessWidget {
  const ASocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: AColors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: ASizes.iconLg,
              width: ASizes.iconLg,
              image: AssetImage(AImages.google),
            ),
          ),
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: AColors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: ASizes.iconLg,
              width: ASizes.iconLg,
              image: AssetImage(AImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
