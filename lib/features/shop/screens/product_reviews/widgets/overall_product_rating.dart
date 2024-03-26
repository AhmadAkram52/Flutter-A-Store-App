import 'package:a_store/common/widgets/products/rating/rating_stars_indicator.dart';
import 'package:a_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter/material.dart';

class AOverAllProductRating extends StatelessWidget {
  const AOverAllProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Rating Value
              Text("3.4", style: Theme.of(context).textTheme.displayLarge),

              /// Rating Stars
              const ARatingStarsIndicator(rating: 3.4),

              /// Total Reviews
              Text('2,911', style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              ARatingProgressIndicator(text: "5", value: .9),
              ARatingProgressIndicator(text: "4", value: .7),
              ARatingProgressIndicator(text: "3", value: .5),
              ARatingProgressIndicator(text: "2", value: .4),
              ARatingProgressIndicator(text: "1", value: .2),
            ],
          ),
        )
      ],
    );
  }
}
