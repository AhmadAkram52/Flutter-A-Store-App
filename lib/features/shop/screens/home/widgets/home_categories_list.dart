import 'package:a_store/common/widgets/image_text/vertical_image_text.dart';
import 'package:a_store/common/widgets/text/section_heading.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class AHomeCategoriesList extends StatelessWidget {
  const AHomeCategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: ASizes.md),
      child: Column(
        children: [
          // Heading
          ASectionHeading(
            onPressed: () {},
            headingTitle: ATexts.popularCategories,
            textColor: AColors.white,
            showActionButton: false,
          ),
          const SizedBox(height: ASizes.spaceBtwItems),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return AVerticalImageText(
                  title: 'Shoes',
                  image: AImages.appleLogo,
                  iconColor: AColors.black,
                  backgroundColor: AColors.white,
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
