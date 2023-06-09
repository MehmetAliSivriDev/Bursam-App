import 'package:flutter/material.dart';

enum CustomPaddings {
  mainScaffoldPadding,
  drawerPadding,
  bNavBarPadding,
  bnavBarItemsPadding,
  foodContainerPadding,
  foodCategoryContainerPadding,
  placesCategoryPadding,
  mainNavBarPadding
}

extension CustomPaddingsExtension on CustomPaddings {
  EdgeInsets getPadding() {
    switch (this) {
      case CustomPaddings.mainScaffoldPadding:
        return const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
      case CustomPaddings.drawerPadding:
        return const EdgeInsets.symmetric(horizontal: 10, vertical: 10);
      case CustomPaddings.bNavBarPadding:
        return const EdgeInsets.only(bottom: 15, left: 10, right: 10);
      case CustomPaddings.bnavBarItemsPadding:
        return const EdgeInsets.all(8.0);
      case CustomPaddings.foodContainerPadding:
        return const EdgeInsets.only(bottom: 18);
      case CustomPaddings.foodCategoryContainerPadding:
        return const EdgeInsets.all(12.0);
      case CustomPaddings.placesCategoryPadding:
        return const EdgeInsets.symmetric(horizontal: 20, vertical: 20);
      case CustomPaddings.mainNavBarPadding:
        return const EdgeInsets.only(bottom: 10, left: 10, right: 10);
    }
  }
}
