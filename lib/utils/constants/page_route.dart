import 'package:a_store/features/authentication/screens/Forget/forget_screen.dart';
import 'package:a_store/features/authentication/screens/login/login_screen.dart';
import 'package:a_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:a_store/features/authentication/screens/signup/email_verification_screen.dart';
import 'package:a_store/features/authentication/screens/signup/signup_screen.dart';
import 'package:get/get.dart';

class APageRoutes {
  static List<GetPage> aPagesRoutes = [
    GetPage(name: '/', page: () => const OnboardingScreen()),
    GetPage(name: '/login', page: () => const LoginScreen()),
    GetPage(name: '/signup', page: () => const SignUpScreen()),
    GetPage(name: '/forget', page: () => const ForgetScreen()),
    GetPage(
        name: '/emailVerification',
        page: () => const EmailVerificationScreen()),
  ];
}
