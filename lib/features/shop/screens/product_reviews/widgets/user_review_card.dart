import 'package:a_store/common/widgets/products/rating/rating_stars_indicator.dart';
import 'package:a_store/common/widgets/text/read_more_text.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AUserReviewCard extends StatelessWidget {
  const AUserReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
                backgroundImage: AssetImage(AImages.userProfileImage2)),
            const SizedBox(width: ASizes.spaceBtwItems),
            Text(
              'Ahmad Akram',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwItems / 2),
        Row(
          children: [
            const ARatingStarsIndicator(rating: 4.5),
            const SizedBox(width: ASizes.spaceBtwItems),
            Text(
              '01 Jan, 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwItems),
        const AReadMoreText(
          text:
              "The User interface of the app is Good and user friendly any can use it easily with out any hesitations. The User interface of the app is Good and user friendly any can use it easily with out any hesitations.",
        ),
        const SizedBox(height: ASizes.spaceBtwItems),
        Card(
          color: isDark ? AColors.darkerGrey : AColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ASizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "A's Store",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '01 Jan, 2024',
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
                const SizedBox(height: ASizes.spaceBtwItems / 2),
                const AReadMoreText(
                  text:
                      "The User interface of the app is Good and user friendly any can use it easily with out any hesitations. The User interface of the app is Good and user friendly any can use it easily with out any hesitations.",
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: ASizes.spaceBtwSections / 2),
      ],
    );
  }
}
