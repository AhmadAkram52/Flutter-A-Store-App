import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ARoundedContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double radius;
  final Widget? child;
  final Color backgroundColor;
  final bool showBorder;
  final Color borderColor;

  const ARoundedContainer({
    super.key,
    this.height,
    this.width,
    this.radius = ASizes.cardRadiusLg,
    this.child,
    this.backgroundColor = AColors.white,
    this.padding,
    this.margin,
    this.showBorder = false,
    this.borderColor = AColors.borderPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
