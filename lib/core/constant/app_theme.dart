import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish =ThemeData(

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
    bodyLarge: TextStyle(height: 2, color: AppColor.darkGrey, fontSize: 18),
    bodyMedium: TextStyle(color: AppColor.darkGrey, fontSize: 16),
  ),
);

ThemeData themeArabic =ThemeData(

  fontFamily: "Cairo",
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
    bodyLarge: TextStyle(height: 2, color: AppColor.darkGrey, fontSize: 18),
    bodyMedium: TextStyle(color: AppColor.darkGrey, fontSize: 16),
  ),
);