import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ForgetHeader extends StatelessWidget {
  const ForgetHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          ATexts.forgetPasswordTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: ASizes.spaceBtwItems,
        ),
        Text(
          ATexts.forgetPasswordSubTitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
