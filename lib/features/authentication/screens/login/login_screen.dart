import 'package:a_store/common/styles/spacing_style.dart';
import 'package:a_store/common/widgets/login_signup/form_divider.dart';
import 'package:a_store/common/widgets/login_signup/social_buttons.dart';
import 'package:a_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:a_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/login_form_btn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

              /// Login Form Button
              const LoginFormBtn(),

              /// Login Form Divider
              AFormDivider(title: ATexts.orSignInWith.capitalize!),
              const SizedBox(height: ASizes.spaceBtwSections),

              /// Social Buttons
              const ASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
