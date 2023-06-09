import 'package:bursam_app/data/dbhelper.dart';
import 'package:bursam_app/models/food_model.dart';
import 'package:bursam_app/models/place_model.dart';
import 'package:bursam_app/models/uludag_activity_model.dart';
import 'package:bursam_app/screens/saved/saved_items_screen.dart';
import 'package:flutter/material.dart';

abstract class SavedItemsScreenStatement extends State<SavedItemsScreen> {
  DbHelper dbHelper = DbHelper();
  List<PlaceModel>? places;
  int placesCount = 0;

  List<FoodModel>? foods;
  int foodsCount = 0;

  List<UludagActivityModel>? activities;
  int activityCount = 0;

  @override
  void initState() {
    getPlaces();
    getFoods();
    getActivities();
    super.initState();
  }

  void getPlaces() {
    dbHelper.createDb().then((value) => null);

    var dbFuture = dbHelper.createDb();
    dbFuture.then((result) {
      var placesFuture = dbHelper.getPlaces();
      placesFuture.then((data) {
        List<PlaceModel> placesData = <PlaceModel>[];
        var placesDataCount = data.length;
        for (int i = 0; i < placesDataCount; i++) {
          placesData.add(PlaceModel.fromObject(data[i]));
        }
        setState(() {
          places = placesData;
          placesCount = placesDataCount;
        });
      });
    });
  }

  void getFoods() {
    dbHelper.createDb().then((value) => null);

    var dbFuture = dbHelper.createDb();
    dbFuture.then((result) {
      var foodsFuture = dbHelper.getFoods();
      foodsFuture.then((data) {
        List<FoodModel> foodsData = <FoodModel>[];
        var foodsDataCount = data.length;
        for (int i = 0; i < foodsDataCount; i++) {
          foodsData.add(FoodModel.fromObject(data[i]));
        }
        setState(() {
          foods = foodsData;
          foodsCount = foodsDataCount;
        });
      });
    });
  }

  void getActivities() {
    dbHelper.createDb().then((value) => null);

    var dbFuture = dbHelper.createDb();
    dbFuture.then((result) {
      var activitiesFuture = dbHelper.getActivities();
      activitiesFuture.then((data) {
        List<UludagActivityModel> activitiesData = <UludagActivityModel>[];
        var activitiesDataCount = data.length;
        for (int i = 0; i < activitiesDataCount; i++) {
          activitiesData.add(UludagActivityModel.fromObject(data[i]));
        }
        setState(() {
          activities = activitiesData;
          activityCount = activitiesDataCount;
        });
      });
    });
  }
}
