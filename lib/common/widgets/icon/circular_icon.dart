import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ACircularIcon extends StatelessWidget {
  const ACircularIcon({
    super.key,
    this.height,
    this.width,
    this.iconSize = ASizes.iconLg,
    this.onPress,
    required this.icon,
    this.iconColor,
    this.backgroundColor,
  });

  final double? height, width, iconSize;
  final VoidCallback? onPress;
  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        padding: const EdgeInsets.all(ASizes.sm),
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor != null
              ? backgroundColor!
              : isDark
                  ? AColors.darkerGrey.withOpacity(.9)
                  : AColors.grey.withOpacity(.9),
        ),
        child: Icon(icon, size: iconSize, color: iconColor),
      ),
    );
    //   CircleAvatar(
    //   backgroundColor: backgroundColor != null
    //       ? backgroundColor!
    //       : isDark
    //           ? AColors.darkerGrey.withOpacity(.9)
    //           : AColors.grey.withOpacity(.9),
    //   child: Center(
    //     child: IconButton(
    //       icon: Icon(icon, size: iconSize, color: iconColor),
    //       onPressed: onPress,
    //     ),
    //     heightFactor: height,
    //   ),
    // );
    //
  }
}
