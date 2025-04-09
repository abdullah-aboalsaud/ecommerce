import 'package:ecommerce/view/screen/auth/forget_password_screen.dart';
import 'package:ecommerce/view/screen/auth/forget_password/forget_password_screen.dart';
import 'package:ecommerce/view/screen/auth/login_screen.dart';
import 'package:ecommerce/view/screen/auth/forget_password/reset_password_screen.dart';
import 'package:ecommerce/view/screen/auth/signup_screen.dart';
import 'package:ecommerce/view/screen/auth/forget_password/success_reset_password_screen.dart';
import 'package:ecommerce/view/screen/auth/success_sign_up_screen.dart';
import 'package:ecommerce/view/screen/auth/verify_code_screen.dart';
import 'package:ecommerce/view/screen/auth/verify_code_sign_up_screen.dart';
import 'package:ecommerce/view/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'core/constant/route_names.dart';

Map<String, Widget Function(BuildContext)> routes = {

  /// auth
  AppRoute.loginScreen: (context) => LoginScreen(),
  AppRoute.signUp: (context) => SignUpScreen(),
  AppRoute.forgetPasswordScreen: (context) => ForgetPasswordScreen(),
  AppRoute.verifyCode: (context) => VerifyCodeScreen(),
  AppRoute.resetPassword: (context) => ResetPasswordScreen(),
  AppRoute.successResetPassword: (context) => SuccessResetPasswordScreen(),
  AppRoute.successSignUpScreen: (context) => SuccessSignUpScreen(),
  AppRoute.verifyCodeSignUpScreen: (context) => VerifyCodeSignUpScreen(),

  /// onBoarding
  AppRoute.onBoarding: (context) => Onboarding(),

};
