import 'package:a_store/common/widgets/bars/appbar.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "4.5",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      RatingBarIndicator(
                        itemSize: 20,
                        rating: 4.5,
                        itemBuilder: (context, index) {
                          return const Icon(
                            Icons.star,
                            color: Colors.amber,
                          );
                        },
                        itemCount: 5,
                      ),
                      const Text('2,911'),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("5",
                                style: Theme.of(context).textTheme.bodyMedium),
                            const SizedBox(width: ASizes.sm),
                            SizedBox(
                              width: ADeviceUtils.getScreenWidth(context) * .5,
                              child: LinearProgressIndicator(
                                value: 0.5,
                                backgroundColor: AColors.grey,
                                borderRadius: BorderRadius.circular(7),
                                minHeight: 10,
                                valueColor: const AlwaysStoppedAnimation(
                                    AColors.primary),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
