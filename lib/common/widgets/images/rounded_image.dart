import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ARoundedImage extends StatelessWidget {
  final double? height, width;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxFit? fit;
  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final double? borderRadius;

  const ARoundedImage({
    super.key,
    this.height,
    this.width,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.backgroundColor = AColors.light,
    this.border,
    this.borderRadius = ASizes.md,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: padding,
        height: height,
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius!)
              : BorderRadius.zero,
          child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
