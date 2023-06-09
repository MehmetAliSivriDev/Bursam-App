import 'dart:io';

import 'package:bursam_app/models/food_model.dart';
import 'package:bursam_app/models/place_model.dart';
import 'package:bursam_app/models/uludag_activity_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  //Places Table Cols-------------------------------
  String tblPlaceName = "places";
  String colPlaceId = "id";
  String colPlaceCategory = "placeCategory";
  String colPlaceName = "placeName";
  String colPlaceExplanation = "placeExplanation";
  String colPlaceLocation = "placeLocation";
  String colPlaceImgPath = "placeImgPath";
  String colPlaceIsSaved = "isSaved";
  //------------------------------------------------

  //Foods Table Cols---------------------------------
  String tblFoodName = "foods";
  String colFoodId = "id";
  String colFoodCategory = "foodCategory";
  String colFoodName = "foodName";
  String colFoodImagePath = "foodImagePath";
  String colFoodIsSaved = "isSaved";
  //------------------------------------------------

  //Uludag Table Cols---------------------------------

  String tblUludagName = "uludag";
  String colActivityId = "id";
  String colActivityHeader = "header";
  String colActivityContent = "content";
  String colActivityImagePath = "activityImagePath";
  String colActivityIsSaved = "isSaved";

  //------------------------------------------------

  DbHelper._internal();
  static final DbHelper _dbHelper = DbHelper._internal();

  factory DbHelper() {
    return _dbHelper;
  }

  static Database? _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await createDb();
    }
    return _db!;
  }

  Future<Database> createDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "bursam.db";
    var bursamDb = await openDatabase(path, version: 1, onCreate: create);
    return bursamDb;
  }

  void create(Database db, int version) async {
    await db.execute(
        "Create table $tblPlaceName($colPlaceId integer primary key,$colPlaceCategory text,$colPlaceName text,$colPlaceExplanation text,$colPlaceLocation text,$colPlaceImgPath text,$colPlaceIsSaved int)");

    await db.execute(
        "Create table $tblFoodName($colFoodId integer primary key,$colFoodCategory text,$colFoodName text,$colFoodImagePath text,$colFoodIsSaved int)");

    await db.execute(
        "Create table $tblUludagName($colActivityId integer primary key,$colActivityHeader text, $colActivityContent text, $colActivityImagePath text,$colActivityIsSaved int)");
  }

  //Place SQL Commands----------------------------------------

  Future<int> placeAdd(PlaceModel placeModel) async {
    Database db = await this.db;
    var result = await db.insert(tblPlaceName, placeModel.toMap());
    return result;
  }

  Future<int> placeDelete(int id) async {
    Database db = await this.db;
    var result =
        await db.rawDelete("Delete from $tblPlaceName where $colPlaceId = $id");
    return result;
  }

  Future<int> placeUpdate(PlaceModel placeModel) async {
    Database db = await this.db;
    var result = db.update(tblPlaceName, placeModel.toMap(),
        where: '$colPlaceId = ?', whereArgs: [placeModel.id]);
    return result;
  }

  Future<List> getPlaces() async {
    Database db = await this.db;
    var result = db.rawQuery("Select * from $tblPlaceName");
    return result;
  }

  //----------------------------------------------------------

  //Food SQL Commands-----------------------------------------

  Future<int> foodAdd(FoodModel foodModel) async {
    Database db = await this.db;
    var result = await db.insert(tblFoodName, foodModel.toMap());
    return result;
  }

  Future<int> foodDelete(int id) async {
    Database db = await this.db;
    var result =
        await db.rawDelete("Delete from $tblFoodName where $colFoodId = $id");
    return result;
  }

  Future<int> foodUpdate(FoodModel foodModel) async {
    Database db = await this.db;
    var result = db.update(tblFoodName, foodModel.toMap(),
        where: '$colFoodId = ?', whereArgs: [foodModel.id]);
    return result;
  }

  Future<List> getFoods() async {
    Database db = await this.db;
    var result = db.rawQuery("Select * from $tblFoodName");
    return result;
  }

  //----------------------------------------------------------

  //Uludag SQL Commands-----------------------------------------

  Future<int> activityAdd(UludagActivityModel activityModel) async {
    Database db = await this.db;
    var result = await db.insert(tblUludagName, activityModel.toMap());
    return result;
  }

  Future<int> activityDelete(int id) async {
    Database db = await this.db;
    var result = await db
        .rawDelete("Delete from $tblUludagName where $colActivityId = $id");
    return result;
  }

  Future<int> activityUpdate(UludagActivityModel activityModel) async {
    Database db = await this.db;
    var result = db.update(tblUludagName, activityModel.toMap(),
        where: '$colActivityId = ?', whereArgs: [activityModel.id]);
    return result;
  }

  Future<List> getActivities() async {
    Database db = await this.db;
    var result = db.rawQuery("Select * from $tblUludagName");
    return result;
  }

  //----------------------------------------------------------
}
