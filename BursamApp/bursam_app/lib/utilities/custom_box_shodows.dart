import 'package:flutter/material.dart';

enum CustomBoxShodows {
  foodContainerShadow,
  placeCategoryShadow,
  savedContainerShadow
}

extension CustomBoxShodowsExtension on CustomBoxShodows {
  BoxShadow getShodow() {
    switch (this) {
      case CustomBoxShodows.foodContainerShadow:
        return const BoxShadow(
          color: Colors.grey,
          offset: Offset(3, 8),
          blurRadius: 10,
        );
      case CustomBoxShodows.placeCategoryShadow:
        return const BoxShadow(
          color: Colors.grey,
          offset: Offset(3, 8),
          blurRadius: 5,
        );
      case CustomBoxShodows.savedContainerShadow:
        return const BoxShadow(
          color: Colors.grey,
          offset: Offset(2, 4),
          blurRadius: 10,
        );
    }
  }
}
