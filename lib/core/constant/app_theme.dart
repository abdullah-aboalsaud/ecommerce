import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  primaryColor: AppColors.primaryColor,

  scaffoldBackgroundColor: AppColors.background,

  /// appBar
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    foregroundColor: Colors.white,
    titleTextStyle: TextStyle(color: AppColors.white),
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.white,
  ),
  /// elevatedButtonTheme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.secondaryColor,
      foregroundColor: Colors.white,
      textStyle: TextStyle(fontWeight: FontWeight.bold),
    ),
  ),
  fontFamily: "PlayfairDisplay",

  /// text theme
  textTheme: TextTheme(
    /// title
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColors.black,
      fontFamily: "PlayfairDisplay",
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColors.black,
      fontFamily: "PlayfairDisplay",
    ),

    /// body
    bodyLarge: TextStyle(height: 2, color: AppColors.darkGrey, fontSize: 18),
    bodyMedium: TextStyle(color: AppColors.darkGrey, fontSize: 16),
  ),
);

ThemeData themeArabic = ThemeData(
  primaryColor: AppColors.primaryColor,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
    surface: AppColors.background,
  ),
  scaffoldBackgroundColor: AppColors.background,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    foregroundColor: Colors.white,
    titleTextStyle: TextStyle(color: AppColors.white),
  ),

  fontFamily: "Cairo",

  /// text theme
  textTheme: TextTheme(
    /// title
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColors.black,
      fontFamily: "PlayfairDisplay",
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColors.black,
      fontFamily: "PlayfairDisplay",
    ),

    /// body
    bodyLarge: TextStyle(height: 2, color: AppColors.darkGrey, fontSize: 18),
    bodyMedium: TextStyle(color: AppColors.darkGrey, fontSize: 16),
  ),
);
