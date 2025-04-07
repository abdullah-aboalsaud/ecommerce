import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/localization/change_locale.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/test.dart';
import 'package:ecommerce/view/screen/auth/forget_password_screen.dart';
import 'package:ecommerce/view/screen/auth/login_screen.dart';
import 'package:ecommerce/view/screen/auth/reset_password_screen.dart';
import 'package:ecommerce/view/screen/auth/signup_screen.dart';
import 'package:ecommerce/view/screen/auth/verify_code_screen.dart';
import 'package:ecommerce/view/screen/language_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    return GetMaterialApp(
      locale: localeController.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",

        /// text theme
        textTheme: TextTheme(
          /// title
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.black,
            fontFamily: "PlayfairDisplay",
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: AppColor.black,
            fontFamily: "PlayfairDisplay",
          ),

          /// body
          bodyLarge: TextStyle(height: 2, color: AppColor.grey, fontSize: 18),
          bodyMedium: TextStyle(color: AppColor.grey, fontSize: 16),
        ),
      ),

      /// start page run
      home:
          LanguageScreen(),
          //  LoginScreen(),
          // ResetPasswordScreen(),
          // ForgetPassword(),
          //TestScreen(),
          //VerifyCodeScreen(),
      routes: routes,
    );
  }
}
