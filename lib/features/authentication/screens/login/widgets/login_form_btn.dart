import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginFormBtn extends StatelessWidget {
  const LoginFormBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
            child: const Text(ATexts.signIn),
          ),
        ),
        const SizedBox(height: ASizes.spaceBtwItems),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () {}, child: const Text(ATexts.createAccount)),
        ),
        const SizedBox(height: ASizes.spaceBtwItems),
      ],
    );
  }
}
