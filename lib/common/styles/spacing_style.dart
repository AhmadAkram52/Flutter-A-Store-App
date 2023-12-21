import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class ASpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBar = EdgeInsets.only(
      top: ASizes.appBarHeight,
      right: ASizes.defaultSpace,
      bottom: ASizes.defaultSpace,
      left: ASizes.defaultSpace);
  static const EdgeInsetsGeometry paddingWithOutTop = EdgeInsets.only(
      top: ASizes.defaultSpace,
      right: ASizes.defaultSpace,
      bottom: ASizes.defaultSpace,
      left: ASizes.defaultSpace);
}
