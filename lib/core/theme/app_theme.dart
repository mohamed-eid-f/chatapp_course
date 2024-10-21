import "package:chatapp_course/core/theme/app_colors.dart";
import "package:flutter/material.dart";

var appThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
  ),
  iconTheme: const IconThemeData(
    color: AppColors.fontColor,
    size: 28,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: AppColors.primaryColor,
      shape: const RoundedRectangleBorder(
        // borderRadius: BorderRadius.circular(0),
        side: BorderSide(color: AppColors.primaryColor, width: 2),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    filled: true,
    fillColor: Colors.white,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        // borderRadius: BorderRadius.all(Radius.circular(16)),
        side: BorderSide.none,
      ),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: AppColors.secondaryColor,
    backgroundColor: AppColors.primaryColor,
    elevation: 4,
    // shape: CircleBorder(),
    iconSize: 28,
  ),
  brightness: Brightness.light,
  fontFamily: 'Inter',
  cardColor: const Color(0xFFedecf2),
  primaryColor: AppColors.primaryColor,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: AppColors.fontColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: AppColors.fontColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: AppColors.fontColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: AppColors.fontColor,
      fontSize: 14,
      height: 1.5,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: AppColors.fontColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
);
