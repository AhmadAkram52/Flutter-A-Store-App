import 'package:a_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:a_store/common/widgets/searchbar/search_bar.dart';
import 'package:a_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:a_store/features/shop/screens/home/widgets/home_categories_list.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// HomeAppBar
                  AHomeAppBar(),
                  SizedBox(height: ASizes.spaceBtwSections),

                  /// SearchBar
                  ASearchBar(),
                  SizedBox(height: ASizes.spaceBtwSections),

                  /// Categories
                  AHomeCategoriesList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
