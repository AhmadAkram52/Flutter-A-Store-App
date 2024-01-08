import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ASearchBar extends StatelessWidget {
  const ASearchBar({
    super.key,
    required this.hintText,
    this.padding = const EdgeInsets.symmetric(horizontal: ASizes.md),
  });

  final String hintText;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: Theme.of(context).textTheme.titleLarge,
        decoration: InputDecoration(
            fillColor: isDark ? AColors.dark : AColors.light,
            filled: true,
            prefixIcon: const Icon(Iconsax.search_normal),
            hintText: ATexts.searchInStore,
            hintStyle: Theme.of(context)
                .textTheme
                .titleLarge
                ?.apply(color: AColors.darkerGrey),
            prefixIconColor: !isDark ? AColors.dark : AColors.light),
      ),
    );
  }
}
