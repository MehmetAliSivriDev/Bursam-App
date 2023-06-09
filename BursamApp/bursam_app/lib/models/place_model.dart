class PlaceModel {
  int? id;
  String? placeCategory;
  String? placeName;
  String? placeExplanation;
  String? placeLocation;
  String? placeImgPath;
  bool? isSaved;

  PlaceModel(
      {this.id,
      required this.placeCategory,
      required this.placeName,
      required this.placeExplanation,
      required this.placeLocation,
      required this.placeImgPath,
      this.isSaved = false});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["placeCategory"] = placeCategory;
    map["placeName"] = placeName;
    map["placeExplanation"] = placeExplanation;
    map["placeLocation"] = placeLocation;
    map["placeImgPath"] = placeImgPath;
    map["isSaved"] = isSaved! ? 1 : 0;

    if (id != null) {
      map["id"] = id;
    }

    return map;
  }

  PlaceModel.fromObject(dynamic o) {
    this.id = o["id"];
    this.placeCategory = o["placeCategory"];
    this.placeName = o["placeName"];
    this.placeExplanation = o["placeExplanation"];
    this.placeLocation = o["placeLocation"];
    this.placeImgPath = o["placeImgPath"];
    this.isSaved = o["isSaved"] == 1;
  }
}
