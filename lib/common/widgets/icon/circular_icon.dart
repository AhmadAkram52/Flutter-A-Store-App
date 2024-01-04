import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ACircularIcon extends StatelessWidget {
  const ACircularIcon({
    super.key,
    this.height,
    this.width,
    this.iconSize,
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
      onTap: () {},
      child: Container(
          height: height,
          padding: const EdgeInsets.all(5),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isDark
                ? AColors.black.withOpacity(.7)
                : AColors.white.withOpacity(.9),
          ),
          child: Icon(icon, size: iconSize, color: iconColor)),
    );
  }
}
