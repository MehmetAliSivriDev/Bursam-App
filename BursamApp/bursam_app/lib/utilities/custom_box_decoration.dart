import 'package:bursam_app/utilities/custom_border_radius.dart';
import 'package:bursam_app/utilities/custom_box_shodows.dart';
import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:flutter/material.dart';

enum CustomBoxDecoration {
  foodContainerDecoration,
  placeCategoryDecoration,
  bNavBarDecoration,
  mainScreenContainerDecoration
}

extension CustomBoxDecorationExtension on CustomBoxDecoration {
  BoxDecoration getDecoration() {
    switch (this) {
      case CustomBoxDecoration.foodContainerDecoration:
        return BoxDecoration(
            boxShadow: [CustomBoxShodows.foodContainerShadow.getShodow()],
            borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
            gradient: const LinearGradient(colors: [
              CustomColors.mainGreen,
              CustomColors.secondGreen,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight));
      case CustomBoxDecoration.placeCategoryDecoration:
        return BoxDecoration(
            boxShadow: [CustomBoxShodows.placeCategoryShadow.getShodow()],
            borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
            gradient: const LinearGradient(colors: [
              CustomColors.mainGreen,
              CustomColors.secondGreen,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight));
      case CustomBoxDecoration.bNavBarDecoration:
        return BoxDecoration(
          borderRadius: CustomBorderRadius.bNavBarBRadius.getBRadius(),
          color: CustomColors.mainGreen,
        );
      case CustomBoxDecoration.mainScreenContainerDecoration:
        return BoxDecoration(
            color: CustomColors.mainGreen,
            borderRadius:
                CustomBorderRadius.mScreenContainerBRadius.getBRadius());
    }
  }
}
