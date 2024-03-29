import 'package:a_store/common/widgets/success_screen/success_screen.dart';
import 'package:a_store/features/authentication/screens/Forget/forget_screen.dart';
import 'package:a_store/features/authentication/screens/forget/reset_screen.dart';
import 'package:a_store/features/authentication/screens/login/login_screen.dart';
import 'package:a_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:a_store/features/authentication/screens/signup/email_verification_screen.dart';
import 'package:a_store/features/authentication/screens/signup/signup_screen.dart';
import 'package:a_store/features/personalization/screens/address/my_addresses_screen.dart';
import 'package:a_store/features/personalization/screens/profile/profile.dart';
import 'package:a_store/features/shop/screens/product_reviews/products_reviews.dart';
import 'package:a_store/navigation_menu.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import '../../features/personalization/screens/address/add_new_address.dart';

class APageRoutes {
  static List<GetPage> aPagesRoutes = [
    GetPage(name: '/', page: () => const OnboardingScreen()),
    GetPage(name: '/login', page: () => const LoginScreen()),
    GetPage(name: '/signup', page: () => const SignUpScreen()),
    GetPage(name: '/forget', page: () => const ForgetScreen()),
    GetPage(name: '/emailVerify', page: () => const EmailVerifyScreen()),
    GetPage(
      name: '/signUpSuccess',
      page: () => SuccessScreen(
        onPressed: () => Get.offAllNamed('/login'),
        title: ATexts.yourAccountCreatedTitle,
        image: AImages.staticSuccessIllustration,
        subtitle: ATexts.yourAccountCreatedSubTitle,
      ),
    ),
    GetPage(name: '/reset', page: () => const ResetScreen()),
    GetPage(name: '/navigation', page: () => const NavigationMenu()),
    GetPage(name: '/profile', page: () => const AProfile()),
    GetPage(name: '/addresses', page: () => const MyAddresses()),
    GetPage(name: '/productReviews', page: () => const AProductReviews()),
    GetPage(name: '/addNewAddress', page: () => const AddNewAddress()),
  ];
}
