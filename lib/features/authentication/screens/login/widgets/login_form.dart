import 'package:a_store/features/authentication/controllers/login/login_controller.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ALoginForm extends StatelessWidget {
  const ALoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                label: Text(ATexts.email),
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            Obx(() {
              return TextFormField(
                obscureText: LoginController.instance.hidePassword.value,
                decoration: InputDecoration(
                  label: const Text(ATexts.password),
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    icon: Icon(LoginController.instance.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                    onPressed: () => LoginController.instance.showPassword(),
                  ),
                ),
              );
            }),
            const SizedBox(height: ASizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(() {
                      return Checkbox(
                          value: LoginController.instance.rememberCheck.value,
                          onChanged: (value) {
                            LoginController.instance.markRemember(value);
                          });
                    }),
                    const Text(ATexts.rememberMe),
                  ],
                ),
                TextButton(
                    onPressed: () => LoginController.instance.forgetPassword(),
                    child: const Text(ATexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: ASizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.signIn(),
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
                child: const Text(ATexts.signIn),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => LoginController.instance.createAccount(),
                  child: const Text(ATexts.createAccount)),
            ),
          ],
        ),
      ),
    );
  }
}
