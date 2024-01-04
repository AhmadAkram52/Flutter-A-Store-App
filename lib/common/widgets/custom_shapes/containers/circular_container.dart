import 'package:a_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ACircularContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double padding;
  final double radius;
  final Widget? child;
  final Color backgroundColor;

  const ACircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.padding = 0,
    this.radius = 400,
    this.child,
    this.backgroundColor = AColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
