import 'package:ecommerce/view/screen/auth/login_screen.dart';
import 'package:ecommerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

import 'core/constant/route_names.dart';

Map<String, Widget Function(BuildContext)> routes ={

  AppRoute.loginScreen :(context)=>LoginScreen(),
  AppRoute.onBoarding :(context)=>Onboarding(),

};