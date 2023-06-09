import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: CustomColors.scaffoldColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: CustomColors.mainGreen,
        elevation: 0,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: CustomColors.pageViewFabColor, iconSize: 30),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: CustomColors.mainGreen,
          selectedItemColor: CustomColors.scaffoldColor,
          unselectedItemColor: Colors.white54,
          selectedIconTheme: IconThemeData(color: CustomColors.mainGreen),
          type: BottomNavigationBarType.shifting));
}
