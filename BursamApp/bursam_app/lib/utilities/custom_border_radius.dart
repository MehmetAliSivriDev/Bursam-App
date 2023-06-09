import 'package:flutter/cupertino.dart';

enum CustomBorderRadius {
  bNavBarBRadius,
  mScreenContainerBRadius,
  stackBRadius,
  rPlaceCardBRadius,
  drawerBRadius,
}

extension CustomBorderRadiusExtension on CustomBorderRadius {
  BorderRadius getBRadius() {
    switch (this) {
      case CustomBorderRadius.bNavBarBRadius:
        return BorderRadius.circular(28);
      case CustomBorderRadius.mScreenContainerBRadius:
        return const BorderRadius.only(
            bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40));
      case CustomBorderRadius.stackBRadius:
        return BorderRadius.circular(20);
      case CustomBorderRadius.rPlaceCardBRadius:
        return BorderRadius.circular(10);
      case CustomBorderRadius.drawerBRadius:
        return const BorderRadius.only(
            topRight: Radius.circular(35), bottomRight: Radius.circular(35));
    }
  }
}
