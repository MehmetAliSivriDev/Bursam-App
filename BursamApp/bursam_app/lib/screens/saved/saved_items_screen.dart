import 'package:bursam_app/const/const_strings.dart';
import 'package:bursam_app/models/food_model.dart';
import 'package:bursam_app/models/place_model.dart';
import 'package:bursam_app/models/uludag_activity_model.dart';
import 'package:bursam_app/statements/saved_items_screen_statement.dart';
import 'package:bursam_app/utilities/custom_border_radius.dart';
import 'package:bursam_app/utilities/custom_box_shodows.dart';
import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:bursam_app/utilities/custom_text_styles.dart';
import 'package:flutter/material.dart';

class SavedItemsScreen extends StatefulWidget {
  const SavedItemsScreen({super.key, required this.category});
  final String category;

  @override
  State<SavedItemsScreen> createState() => _SavedItemsScreenState();
}

class _SavedItemsScreenState extends SavedItemsScreenStatement {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: _itemsBuild(category: widget.category),
    );
  }

  ListView _itemsBuild({required String category}) {
    if (category == ConstStrings.savedCategoryPS) {
      return ListView.builder(
        itemCount: placesCount,
        itemBuilder: (context, index) {
          if (places![index].isSaved!) {
            return _savedPlacesContainer(context, index);
          } else {
            return const SizedBox.shrink();
          }
        },
      );
    } else if (category == ConstStrings.savedCategoryFS) {
      return ListView.builder(
        itemCount: foodsCount,
        itemBuilder: (context, index) {
          if (foods![index].isSaved!) {
            return _savedFoodsContainer(context, index);
          } else {
            return const SizedBox.shrink();
          }
        },
      );
    } else if (category == ConstStrings.savedCategoryUG) {
      return ListView.builder(
        itemCount: activityCount,
        itemBuilder: (context, index) {
          if (activities![index].isSaved!) {
            return _savedUludagActivitiesContainer(context, index);
          } else {
            return const SizedBox.shrink();
          }
        },
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return const SizedBox.shrink();
        },
      );
    }
  }

  Padding _savedUludagActivitiesContainer(BuildContext context, int index) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: CustomPaddings.mainScaffoldPadding.getPadding(),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [CustomBoxShodows.savedContainerShadow.getShodow()]),
        width: width,
        height: height * 0.35,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
              child: Image.asset(
                activities![index].activityImagePath ?? "",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                width: width * 0.80,
                left: 15,
                bottom: 15,
                child: Card(
                  color: CustomColors.stackTextBarWhite,
                  child: Padding(
                    padding: CustomPaddings.bnavBarItemsPadding.getPadding(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(activities![index].header ?? "",
                            style: CustomTextStyles.savedItemsHeadline
                                .getStyle(context)),
                        Text(
                            maxLines: 3,
                            activities![index].content ?? "",
                            style: CustomTextStyles.savedItemsSubtitle
                                .getStyle(context)),
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 10,
                right: 10,
                child: Card(
                  color: CustomColors.stackTextBarWhite,
                  child: IconButton(
                    iconSize: 35,
                    onPressed: () async {
                      setState(() {
                        UludagActivityModel updatedModel = UludagActivityModel(
                            id: activities![index].id,
                            header: activities![index].header,
                            content: activities![index].content,
                            activityImagePath:
                                activities![index].activityImagePath,
                            isSaved: false);

                        dbHelper.activityUpdate(updatedModel);

                        activities![index].isSaved = false;
                      });
                    },
                    icon: Icon(
                      Icons.delete,
                      color: CustomColors.savedDeleteButtonRed,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Padding _savedFoodsContainer(BuildContext context, int index) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: CustomPaddings.mainScaffoldPadding.getPadding(),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [CustomBoxShodows.savedContainerShadow.getShodow()]),
        width: width,
        height: height * 0.35,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
              child: Image.asset(
                foods![index].foodImagePath ?? "",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                width: width * 0.80,
                left: 15,
                bottom: 15,
                child: Card(
                  color: CustomColors.stackTextBarWhite,
                  child: Padding(
                    padding: CustomPaddings.bnavBarItemsPadding.getPadding(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foods![index].foodName ?? "",
                            style: CustomTextStyles.savedItemsHeadline
                                .getStyle(context)),
                        Text(
                            maxLines: 3,
                            "Category: ${foods![index].foodCategory}",
                            style: CustomTextStyles.savedItemsSubtitle
                                .getStyle(context))
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 10,
                right: 10,
                child: Card(
                  color: CustomColors.stackTextBarWhite,
                  child: IconButton(
                    iconSize: 35,
                    onPressed: () async {
                      setState(() {
                        FoodModel updatedModel = FoodModel(
                            id: foods![index].id,
                            foodCategory: foods![index].foodCategory,
                            foodName: foods![index].foodName,
                            foodImagePath: foods![index].foodImagePath,
                            isSaved: false);

                        dbHelper.foodUpdate(updatedModel);

                        foods![index].isSaved = false;
                      });
                    },
                    icon: Icon(
                      Icons.delete,
                      color: CustomColors.savedDeleteButtonRed,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Padding _savedPlacesContainer(BuildContext context, int index) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: CustomPaddings.mainScaffoldPadding.getPadding(),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [CustomBoxShodows.savedContainerShadow.getShodow()]),
        width: width,
        height: height * 0.35,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
              child: Image.asset(
                places![index].placeImgPath ?? "",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                width: width * 0.80,
                left: 15,
                bottom: 15,
                child: Card(
                  color: CustomColors.stackTextBarWhite,
                  child: Padding(
                    padding: CustomPaddings.bnavBarItemsPadding.getPadding(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          places![index].placeName ?? "",
                          style: CustomTextStyles.savedItemsHeadline
                              .getStyle(context),
                        ),
                        Text(
                          maxLines: 3,
                          "Category: ${places![index].placeCategory}",
                          style: CustomTextStyles.savedItemsSubtitle
                              .getStyle(context),
                        )
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 10,
                right: 10,
                child: Card(
                  color: CustomColors.stackTextBarWhite,
                  child: IconButton(
                    iconSize: 35,
                    onPressed: () async {
                      setState(() {
                        PlaceModel updatedModel = PlaceModel(
                            id: places![index].id,
                            placeCategory: places![index].placeCategory,
                            placeName: places![index].placeName,
                            placeExplanation: places![index].placeExplanation,
                            placeLocation: places![index].placeLocation,
                            placeImgPath: places![index].placeImgPath,
                            isSaved: false);

                        dbHelper.placeUpdate(updatedModel);

                        places![index].isSaved = false;
                      });
                    },
                    icon: Icon(
                      Icons.delete,
                      color: CustomColors.savedDeleteButtonRed,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
