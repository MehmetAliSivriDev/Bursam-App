class UludagActivityModel {
  int? id;
  String? header;
  String? content;
  String? activityImagePath;
  bool? isSaved;

  UludagActivityModel(
      {this.id,
      required this.header,
      required this.content,
      required this.activityImagePath,
      this.isSaved = false});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    map["header"] = header;
    map["content"] = content;
    map["activityImagePath"] = activityImagePath;
    map["isSaved"] = isSaved! ? 1 : 0;

    if (id != null) {
      map["id"] = id;
    }

    return map;
  }

  UludagActivityModel.fromObject(dynamic o) {
    this.id = o["id"];
    this.header = o["header"];
    this.content = o["content"];
    this.activityImagePath = o["activityImagePath"];
    this.isSaved = o["isSaved"] == 1;
  }
}
