import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ACircularImage extends StatelessWidget {
  const ACircularImage({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    this.height = 56,
    this.width = 56,
    this.fit = BoxFit.cover,
    this.overlyColor,
    this.backgroundColor,
    this.padding = ASizes.sm,
  });

  final String image;
  final bool isNetworkImage;
  final double height, width, padding;
  final BoxFit fit;
  final Color? overlyColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? (isDark ? AColors.black : AColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlyColor,
      ),
    );
  }
}
