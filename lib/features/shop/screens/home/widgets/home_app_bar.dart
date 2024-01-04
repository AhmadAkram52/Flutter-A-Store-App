import 'package:a_store/common/widgets/appbar/appbar.dart';
import 'package:a_store/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class AHomeAppBar extends StatelessWidget {
  const AHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ATexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.apply(color: AColors.grey),
          ),
          Text(
            ATexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.apply(color: AColors.white),
          ),
        ],
      ),
      action: [
        ACartCounterIcon(
          onPressed: () {},
          iconColor: AColors.white,
        ),
      ],
      showBackArrow: false,
    );
  }
}
