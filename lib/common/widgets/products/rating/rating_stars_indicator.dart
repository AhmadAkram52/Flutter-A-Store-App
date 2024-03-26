import 'package:a_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ARatingStarsIndicator extends StatelessWidget {
  const ARatingStarsIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemSize: 20,
      rating: rating,
      itemBuilder: (_, __) {
        return const Icon(
          Icons.star,
          color: AColors.primary,
        );
      },
      unratedColor: AColors.grey,
      itemCount: 5,
    );
  }
}
