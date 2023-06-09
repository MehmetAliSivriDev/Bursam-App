import 'package:bursam_app/data/dbhelper.dart';
import 'package:bursam_app/models/uludag_activity_model.dart';
import 'package:bursam_app/screens/uludag/uludag_activities_screen.dart';
import 'package:flutter/material.dart';

abstract class UludagActivityScreenStatement
    extends State<UludagActivitiesScreen> {
  DbHelper dbHelper = DbHelper();
  List<UludagActivityModel>? activities;
  int activityCount = 0;

  @override
  void initState() {
    getActivities();
    super.initState();
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
