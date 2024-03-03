import 'package:a_store/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class ABrandTitle extends StatelessWidget {
  const ABrandTitle({
    super.key,
    required this.brandTitle,
    this.maxLines = 1,
    this.textColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String brandTitle;
  final int maxLines;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      brandTitle,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .apply(color: textColor)
                  : Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: textColor),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
