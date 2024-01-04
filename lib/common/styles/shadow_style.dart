import 'package:a_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: AColors.dark.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: AColors.dark.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
