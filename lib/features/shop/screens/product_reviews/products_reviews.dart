import 'package:a_store/common/widgets/bars/appbar.dart';
import 'package:a_store/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:a_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AProductReviews extends StatelessWidget {
  const AProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AAppBar(
        showBackArrow: true,
        title: Text("Reviews & Ratings"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              const Text(
                  'Rating & Reviews are Verified and are form people who use same types of device that you use.'),
              const SizedBox(height: ASizes.spaceBtwItems),

              /// Over All Product Rating
              const AOverAllProductRating(),
              const SizedBox(height: ASizes.spaceBtwSections),

              /// Users Reviews List
              Column(
                children: List.generate(5, (index) => const AUserReviewCard()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
