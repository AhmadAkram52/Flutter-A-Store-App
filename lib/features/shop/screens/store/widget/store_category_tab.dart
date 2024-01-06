import 'package:a_store/common/widgets/brand/brand_showcase.dart';
import 'package:a_store/common/widgets/layout/gridview_layout.dart';
import 'package:a_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:a_store/common/widgets/text/section_heading.dart';
import 'package:a_store/features/shop/models/products/products_data_model.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ACategoryTab extends StatelessWidget {
  const ACategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          children: [
            const ABrandShowCase(
              brandTitle: ATexts.nike,
              brandLogo: AImages.nikeLogo,
              images: [
                AImages.productImage1,
                AImages.productImage2,
                AImages.productImage19,
              ],
            ),
            const ABrandShowCase(
              brandTitle: ATexts.puma,
              brandLogo: AImages.pumaLogo,
              images: [
                AImages.productImage1,
                AImages.productImage2,
                AImages.productImage19,
              ],
            ),
            const ASectionHeading(headingTitle: 'You might like'),
            AGridViewLayout(
                itemCounter: 4,
                itemBuilder: (context, index) =>
                    AProductCardVertical(list: productsList, index: index))
          ],
        ),
      ),
    );
  }
}
