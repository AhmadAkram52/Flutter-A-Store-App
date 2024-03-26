import 'package:a_store/common/widgets/bars/appbar.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AAppBar(
        showBackArrow: true,
        title: Text("Add New Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user), labelText: ATexts.name),
              ),
              const SizedBox(height: ASizes.spaceBtwInputFields),
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: ATexts.phoneNo),
              ),
              const SizedBox(height: ASizes.spaceBtwInputFields),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AHelperFunctions.screenWidth() * .42,
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.arrow),
                          labelText: ATexts.street),
                    ),
                  ),
                  SizedBox(
                    width: AHelperFunctions.screenWidth() * .42,
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: ATexts.postalCode),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: ASizes.spaceBtwInputFields),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AHelperFunctions.screenWidth() * .42,
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: ATexts.city),
                    ),
                  ),
                  SizedBox(
                    width: AHelperFunctions.screenWidth() * .42,
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: ATexts.state),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: ASizes.spaceBtwInputFields),
              const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.global),
                    labelText: ATexts.country),
              ),
              const SizedBox(height: ASizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(ATexts.save),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
