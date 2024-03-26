import 'package:a_store/common/widgets/choice_chip/choice_chips.dart';
import 'package:a_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:a_store/common/widgets/text/product_price_text.dart';
import 'package:a_store/common/widgets/text/product_title_text.dart';
import 'package:a_store/common/widgets/text/section_heading.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class AProductAttributes extends StatelessWidget {
  const AProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Variations Price & Stock
        ARoundedContainer(
          backgroundColor: isDark ? AColors.darkerGrey : AColors.grey,
          padding: const EdgeInsets.all(ASizes.md),
          child: Column(
            children: [
              Row(
                children: [
                  const ASectionHeading(
                    headingTitle: "Variation: ",
                    showActionButton: false,
                  ),
                  const SizedBox(width: ASizes.spaceBtwItems / 2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const AProductTitle(title: '${ATexts.price} : '),
                          Text(
                            "\$25 ",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: ASizes.spaceBtwItems / 2),
                          const AProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          const AProductTitle(title: '${ATexts.stock} : '),
                          Text(
                            "Out Of Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const AProductTitle(
                title:
                    "The Description of the product on the 4 line for change variations.",
                maxLine: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: ASizes.spaceBtwItems),

        /// Selected Variations Price & Stock
        /// Colors
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ASectionHeading(
                headingTitle: "Colors", showActionButton: false),
            const SizedBox(height: ASizes.spaceBtwItems / 2),
            Wrap(
              children: [
                AChoiceChip(
                  label: 'Red',
                  selected: true,
                  onSelected: (val) {},
                ),
                AChoiceChip(
                  label: 'Yellow',
                  selected: false,
                  onSelected: (val) {},
                ),
                AChoiceChip(
                  label: 'Green',
                  selected: false,
                  onSelected: (val) {},
                ),
                AChoiceChip(
                  label: 'Blue',
                  selected: false,
                  onSelected: (val) {},
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwItems),

        /// Sizes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ASectionHeading(
                headingTitle: "Sizes", showActionButton: false),
            const SizedBox(height: ASizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AChoiceChip(
                  label: 'EU 34',
                  selected: true,
                  onSelected: (val) {},
                ),
                AChoiceChip(
                  label: 'EU 36',
                  selected: false,
                  onSelected: (val) {},
                ),
                AChoiceChip(
                  label: 'EU 38',
                  selected: false,
                  onSelected: (val) {},
                ),
                AChoiceChip(
                  label: 'EU 40',
                  selected: false,
                  onSelected: (val) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
