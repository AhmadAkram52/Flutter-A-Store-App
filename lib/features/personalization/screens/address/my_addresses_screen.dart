import 'package:a_store/common/widgets/bars/appbar.dart';
import 'package:a_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAddresses extends StatelessWidget {
  const MyAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const AAppBar(
        title: Text("My Addresses"),
        showBackArrow: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/addNewAddress');
        },
        backgroundColor: AColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: List.generate(
                10,
                (index) => Column(
                      children: [
                        ARoundedContainer(
                          borderColor: isDark ? AColors.darkGrey : AColors.grey,
                          backgroundColor: Colors.transparent,
                          showBorder: true,
                          padding: const EdgeInsets.all(ASizes.md),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ahmad Akram",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const Text("+93025249091"),
                              const Text(
                                  "House No # 374, Street No 15, Babar Block, Bahria Town Lahore"),
                            ],
                          ),
                        ),
                        const SizedBox(height: ASizes.spaceBtwItems),
                      ],
                    )),
          ),
        ),
      ),
    );
  }
}
