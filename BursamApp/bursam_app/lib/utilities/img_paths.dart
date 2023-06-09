enum ImagePathsJPG {
  banner1,
  banner2,
  banner3,
  iskender,
  teleferik,
  karagozmuzesi,
  kozahan,
  emirsultancami,
  suutcuselalesi,
  timsaharena,
  snowboarduludag,
  yesilbursa
}

extension ImagePathsJPGExtension on ImagePathsJPG {
  String path() {
    return 'assets/img/$name.jpg';
  }
}

enum ImagePathsPNG { camagaci }

extension ImagePathsPNGExtension on ImagePathsPNG {
  String path() {
    return 'assets/img/$name.png';
  }
}
