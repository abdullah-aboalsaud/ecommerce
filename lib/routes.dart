import 'package:ecommerce/core/middleware/my_middleware.dart';
import 'package:ecommerce/view/screen/auth/forget_password/forget_password_screen.dart';
import 'package:ecommerce/view/screen/auth/login_screen.dart';
import 'package:ecommerce/view/screen/auth/forget_password/reset_password_screen.dart';
import 'package:ecommerce/view/screen/auth/signup_screen.dart';
import 'package:ecommerce/view/screen/auth/forget_password/success_reset_password_screen.dart';
import 'package:ecommerce/view/screen/auth/success_sign_up_screen.dart';
import 'package:ecommerce/view/screen/auth/forget_password/verify_code_screen.dart';
import 'package:ecommerce/view/screen/auth/verify_code_sign_up_screen.dart';
import 'package:ecommerce/view/screen/home_screen.dart';
import 'package:ecommerce/view/screen/items.dart';
import 'package:ecommerce/view/screen/language_screen.dart';
import 'package:ecommerce/view/screen/onboarding_screen.dart';
import 'package:ecommerce/view/screen/product_details.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'core/constant/route_names.dart';

List<GetPage<dynamic>>? routes = [
  // /// for test
  //   GetPage(name: "/", page: () => ProductDetails()),

  /// start page
  GetPage(name: "/", page: () => LanguageScreen(), middlewares: [MyMiddleWare()],),

  /// onBoarding
  GetPage(name: AppRoute.onBoarding, page: () => Onboarding()),

  /// auth
  GetPage(name: AppRoute.loginScreen, page: () => LoginScreen()),
  GetPage(name: AppRoute.signUp, page: () => SignUpScreen()),
  GetPage(name: AppRoute.forgetPasswordScreen, page: () => ForgetPasswordScreen(),),
  GetPage(name: AppRoute.verifyCode, page: () => VerifyCodeScreen()),
  GetPage(name: AppRoute.resetPassword, page: () => ResetPasswordScreen()),
  GetPage(name: AppRoute.successResetPassword, page: () => SuccessResetPasswordScreen(),),
  GetPage(
    name: AppRoute.successSignUpScreen,
    page: () => SuccessSignUpScreen(),
  ),
  GetPage(
    name: AppRoute.verifyCodeSignUpScreen,
    page: () => VerifyCodeSignUpScreen(),
  ),

  /// home
  GetPage(name: AppRoute.homeScreen, page: () => HomeScreen()),
  GetPage(name: AppRoute.items, page: () => Items()),
  GetPage(name: AppRoute.productDetails, page: () => ProductDetails()),
];
