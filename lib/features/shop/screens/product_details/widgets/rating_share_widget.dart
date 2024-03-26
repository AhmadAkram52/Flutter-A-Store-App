import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ARatingAndShare extends StatelessWidget {
  const ARatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.toNamed('/productReviews');
          },
          child: Row(
            children: [
              const Icon(Iconsax.star5, color: Colors.amber),
              const SizedBox(width: ASizes.spaceBtwItems / 2),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "5.0",
                        style: Theme.of(context).textTheme.bodyLarge),
                    const TextSpan(text: '(190)')
                  ],
                ),
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            size: ASizes.iconMd,
          ),
        ),
      ],
    );
  }
}
