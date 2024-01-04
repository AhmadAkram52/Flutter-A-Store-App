import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ASearchBar extends StatelessWidget {
  const ASearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ASizes.md),
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.apply(color: AColors.darkerGrey),
        decoration: InputDecoration(
            fillColor: AColors.white,
            filled: true,
            prefixIcon: const Icon(Iconsax.search_normal),
            hintText: ATexts.searchInStore,
            hintStyle: Theme.of(context)
                .textTheme
                .titleLarge
                ?.apply(color: AColors.darkerGrey),
            prefixIconColor: AColors.darkerGrey),
      ),
    );
  }
}
