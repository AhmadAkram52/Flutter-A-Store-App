import 'package:a_store/common/widgets/bars/appbar.dart';
import 'package:a_store/common/widgets/images/circular_image.dart';
import 'package:a_store/common/widgets/text/section_heading.dart';
import 'package:a_store/features/personalization/screens/profile/profile_menu.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AProfile extends StatelessWidget {
  const AProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: true,
        title: Text(
          ATexts.profile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              const SizedBox(width: ASizes.spaceBtwSections),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: const ACircularImage(
                          image: AImages.user,
                          height: 100,
                          width: 100,
                        )),
                    const SizedBox(height: ASizes.spaceBtwItems / 2),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        ATexts.changeYourImage,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: ASizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems / 2),
              const ASectionHeading(
                headingTitle: ATexts.profileInformation,
                showActionButton: false,
              ),
              AProfileMenu(
                leadingText: ATexts.name,
                title: 'Ahmad Akram',
                icon: Iconsax.arrow_right_3,
                onPress: () {
                  Get.to(const AEditPage(
                    title: ATexts.name,
                    value: 'Ahmad Akram',
                  ));
                },
              ),
              AProfileMenu(
                leadingText: ATexts.username,
                title: 'AhmadAkram',
                icon: Iconsax.arrow_right_3,
                onPress: () {
                  Get.to(const AEditPage(
                    title: ATexts.username,
                    value: 'AhmadAkram',
                  ));
                },
              ),
              const SizedBox(height: ASizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems / 2),
              const ASectionHeading(
                headingTitle: ATexts.profileInformation,
                showActionButton: false,
              ),
              const AProfileMenu(
                  leadingText: ATexts.userid,
                  title: '5249',
                  icon: Iconsax.copy),
              AProfileMenu(
                leadingText: ATexts.email,
                title: 'Ahmadg03025249091@gmail.com',
                icon: Iconsax.arrow_right_3,
                onPress: () {
                  Get.to(const AEditPage(
                    title: ATexts.email,
                    value: 'Ahmadg03025249091@gmail.com',
                  ));
                },
              ),
              AProfileMenu(
                leadingText: ATexts.phoneNo,
                title: '+923025249091',
                icon: Iconsax.arrow_right_3,
                onPress: () {
                  Get.to(const AEditPage(
                    title: ATexts.phoneNo,
                    value: '+923025249091',
                  ));
                },
              ),
              AProfileMenu(
                leadingText: ATexts.gender,
                title: 'Male',
                icon: Iconsax.arrow_right_3,
                onPress: () {
                  Get.to(const AEditPage(
                    title: ATexts.gender,
                    value: 'Male',
                  ));
                },
              ),
              AProfileMenu(
                leadingText: ATexts.dateOfBirth,
                title: '23-05-2000',
                icon: Iconsax.arrow_right_3,
                onPress: () {
                  Get.to(const AEditPage(
                    title: ATexts.dateOfBirth,
                    value: '23-05-2000',
                  ));
                },
              ),
              const SizedBox(height: ASizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems / 2),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Close Account",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: AColors.error),
                ),
              ),
              const SizedBox(height: ASizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}

class AEditPage extends StatelessWidget {
  const AEditPage({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    controller.text = value;
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: true,
        title: Text(
          "Change $title",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              Text(ATexts.editSubtitle,
                  style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: ASizes.spaceBtwSections),
              TextFormField(
                controller: controller,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.user_edit),
                    labelText: title),
              ),
              const SizedBox(height: ASizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(ATexts.save)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
