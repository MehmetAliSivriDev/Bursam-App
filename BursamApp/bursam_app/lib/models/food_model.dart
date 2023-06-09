class FoodModel {
  int? id;
  String? foodCategory;
  String? foodName;
  String? foodImagePath;
  bool? isSaved;

  FoodModel(
      {this.id,
      required this.foodCategory,
      required this.foodName,
      required this.foodImagePath,
      this.isSaved = false});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["foodCategory"] = foodCategory;
    map["foodName"] = foodName;
    map["foodImagePath"] = foodImagePath;
    map["isSaved"] = isSaved! ? 1 : 0;

    if (id != null) {
      map["id"] = id;
    }

    return map;
  }

  FoodModel.fromObject(dynamic o) {
    this.id = o["id"];
    this.foodCategory = o["foodCategory"];
    this.foodName = o["foodName"];
    this.foodImagePath = o["foodImagePath"];
    this.isSaved = o["isSaved"] == 1;
  }
}
