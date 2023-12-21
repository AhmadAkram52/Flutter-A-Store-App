import 'package:a_store/common/styles/spacing_style.dart';
import 'package:a_store/common/widgets/login_signup/form_divider.dart';
import 'package:a_store/common/widgets/login_signup/social_buttons.dart';
import 'package:a_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:a_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithAppBar,
          child: Column(
            children: [
              /// Login Page Header
              const LoginHeader(),

              /// Login Form
              const ALoginForm(),

              /// Login Form Divider
              AFormDivider(title: ATexts.orSignInWith.capitalize!),

              const SizedBox(height: ASizes.spaceBtwItems),

              /// Social Buttons
              const ASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
