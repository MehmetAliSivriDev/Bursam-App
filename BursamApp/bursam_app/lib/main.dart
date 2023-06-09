import 'package:bursam_app/data/loaded_datas.dart';
import 'package:bursam_app/screens/preloading_screen.dart';
import 'package:bursam_app/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  final LoadData _loadData = LoadData();

  @override
  Widget build(BuildContext context) {
    _loadData.loadData();
    return MaterialApp(
      title: 'Bursam',
      theme: LightTheme.customLightTheme,
      home: const PreloadingScreen(),
    );
  }
}
