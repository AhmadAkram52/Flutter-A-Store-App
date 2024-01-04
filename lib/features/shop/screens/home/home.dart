import 'package:a_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:a_store/features/shop/screens/home/widgets/HomeAppBar.dart';
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
                  AHomeAppBar()

                  /// SearchBar

                  /// Categories
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
