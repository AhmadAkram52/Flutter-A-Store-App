import 'package:a_store/common/widgets/text/brand_title_text.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/enums.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class ABrandNameWithVerifyIcon extends StatelessWidget {
  const ABrandNameWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.iconColor = AColors.primary,
  });

  final String title;
  final int maxLines;
  final Color? iconColor, textColor;
  final TextAlign textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ABrandTitle(
          brandTitle: title,
          maxLines: maxLines,
          textColor: textColor,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ),
        const SizedBox(width: ASizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: ASizes.iconXs)
      ],
    );
  }
}
