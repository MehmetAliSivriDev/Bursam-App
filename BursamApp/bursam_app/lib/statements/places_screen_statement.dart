import 'package:bursam_app/data/dbhelper.dart';
import 'package:bursam_app/models/place_model.dart';
import 'package:bursam_app/screens/places/places_screen.dart';
import 'package:flutter/material.dart';

abstract class PlacesScreenStatement extends State<PlacesScreen> {
  DbHelper dbHelper = DbHelper();
  List<PlaceModel>? places;
  int placesCount = 0;

  @override
  void initState() {
    getPlaces();
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
}
