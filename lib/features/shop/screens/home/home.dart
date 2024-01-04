import 'package:a_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:a_store/common/widgets/searchbar/search_bar.dart';
import 'package:a_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// HomeAppBar
                  const AHomeAppBar(),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  /// SearchBar
                  const ASearchBar(),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: const EdgeInsets.only(left: ASizes.md),
                    child: Column(
                      children: [
                        ASectionHeading(
                          onPressed: () {},
                          headingTitle: ATexts.popularProducts,
                          textColor: AColors.white,
                          buttonTitle: 'Ahmad',
                        ),
                        const SizedBox(height: ASizes.spaceBtwItems),
                        const Row(
                          children: [
                            Column(children: [
                              CircleAvatar(),
                              Text("Ahmad"),
                            ]),
                            Column(children: [
                              CircleAvatar(),
                              Text("Ahmad"),
                            ]),
                            Column(children: [
                              CircleAvatar(),
                              Text("Ahmad"),
                            ]),
                            Column(children: [
                              CircleAvatar(),
                              Text("Ahmad"),
                            ]),
                            Column(children: [
                              CircleAvatar(),
                              Text("Ahmad"),
                            ]),
                          ],
                        )
                        // ListView.builder(
                        //   scrollDirection: Axis.horizontal,
                        //   itemCount: 10,
                        //   itemBuilder: (BuildContext context, int index) {
                        //     return const Column(children: [
                        //       CircleAvatar(),
                        //       Text("Ahmad"),
                        //     ]);
                        //   },
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ASectionHeading extends StatelessWidget {
  final String headingTitle, buttonTitle;
  final VoidCallback? onPressed;
  final Color? textColor;
  final bool showActionButton;

  const ASectionHeading({
    super.key,
    required this.headingTitle,
    this.onPressed,
    this.buttonTitle = 'View All',
    this.textColor,
    this.showActionButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headingTitle,
          style: Theme.of(context).textTheme.headlineSmall?.apply(
                color: textColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: () => onPressed,
            child: Text(buttonTitle),
          ),
      ],
    );
  }
}
