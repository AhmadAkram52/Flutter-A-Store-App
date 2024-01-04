import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AGridViewLayout extends StatelessWidget {
  const AGridViewLayout({
    super.key,
    required this.itemCounter,
    this.mainAxisExtent = 226,
    required this.itemBuilder,
  });

  final int itemCounter;
  final double mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: ASizes.gridViewSpacing,
        mainAxisSpacing: ASizes.gridViewSpacing,
        mainAxisExtent: 226,
      ),
      shrinkWrap: true,
      itemCount: itemCounter,
      itemBuilder: itemBuilder,
    );
  }
}
