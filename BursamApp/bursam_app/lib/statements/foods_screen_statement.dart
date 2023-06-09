import 'package:bursam_app/data/dbhelper.dart';
import 'package:bursam_app/models/food_model.dart';
import 'package:bursam_app/screens/foods/foods_categorized.dart';
import 'package:bursam_app/screens/foods/foods_screen.dart';
import 'package:flutter/material.dart';

abstract class FoodsScreenStatement extends State<FoodsScreen> {
  DbHelper dbHelper = DbHelper();
  List<FoodModel>? foods;
  int foodsCount = 0;

  @override
  void initState() {
    getFoods();
    super.initState();
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
}

abstract class FoodsCategorizedStatement extends State<FoodsCategorized> {
  DbHelper dbHelper = DbHelper();
  List<FoodModel>? foods;
  int foodsCount = 0;

  @override
  void initState() {
    getFoods();
    super.initState();
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
}
