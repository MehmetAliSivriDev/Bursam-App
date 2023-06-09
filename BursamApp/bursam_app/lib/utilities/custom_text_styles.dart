import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:flutter/material.dart';

enum CustomTextStyles {
  appBarTextStyle,
  normalTextStyle,
  positionedStackInfoTextStyleSmall,
  positionedStackInfoTextStyleNormal,
  foodContainerHeadline,
  foodContainerSubtitle,
  placeCategoryHeadline,
  savedItemsHeadline,
  savedItemsSubtitle,
  uludagStackText,
  uludagInfoText
}

extension CustomTextStyleExtension on CustomTextStyles {
  TextStyle getStyle(BuildContext context, {Color? color}) {
    switch (this) {
      case CustomTextStyles.appBarTextStyle:
        return Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: color, fontWeight: FontWeight.bold);
      case CustomTextStyles.normalTextStyle:
        return Theme.of(context).textTheme.headline6!.copyWith(color: color);
      case CustomTextStyles.positionedStackInfoTextStyleSmall:
        return Theme.of(context).textTheme.bodyLarge!;
      case CustomTextStyles.positionedStackInfoTextStyleNormal:
        return Theme.of(context).textTheme.headline6!;
      case CustomTextStyles.foodContainerHeadline:
        return Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: CustomColors.scaffoldColor);
      case CustomTextStyles.foodContainerSubtitle:
        return Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: CustomColors.scaffoldColor);
      case CustomTextStyles.placeCategoryHeadline:
        return Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: CustomColors.scaffoldColor);
      case CustomTextStyles.savedItemsHeadline:
        return Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: CustomColors.stackTextBarBlack);

      case CustomTextStyles.savedItemsSubtitle:
        return Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(color: CustomColors.stackTextBarBlack);
      case CustomTextStyles.uludagStackText:
        return Theme.of(context)
            .textTheme
            .displaySmall!
            .copyWith(color: CustomColors.mainGreen);
      case CustomTextStyles.uludagInfoText:
        return Theme.of(context).textTheme.titleMedium!;
    }
  }
}
