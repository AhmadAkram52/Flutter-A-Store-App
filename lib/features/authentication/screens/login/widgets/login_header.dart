import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: ASizes.logoSize,
          image:
              AssetImage(isDark ? AImages.lightAppLogo : AImages.darkAppLogo),
        ),
        const SizedBox(height: ASizes.spaceBtwItems),
        Text(
          ATexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: ASizes.sm),
        Text(
          ATexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
