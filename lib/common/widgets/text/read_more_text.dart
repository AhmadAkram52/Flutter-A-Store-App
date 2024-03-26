import 'package:a_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class AReadMoreText extends StatelessWidget {
  const AReadMoreText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      lessStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w800, color: AColors.primary),
      moreStyle: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w800, color: AColors.primary),
      trimLines: 2,
      trimCollapsedText: ' Read More',
      trimExpandedText: ' Less',
      trimMode: TrimMode.Line,
    );
  }
}
