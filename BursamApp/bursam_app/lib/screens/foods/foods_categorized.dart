import 'package:bursam_app/screens/foods/foods_screen.dart';
import 'package:bursam_app/statements/foods_screen_statement.dart';
import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:flutter/material.dart';

class FoodsCategorized extends StatefulWidget {
  const FoodsCategorized(
      {super.key, required this.category, required this.appbartext});

  final String category;
  final String appbartext;

  @override
  State<FoodsCategorized> createState() => _FoodsCategorizedState();
}

class _FoodsCategorizedState extends FoodsCategorizedStatement {
  @override
  Widget build(BuildContext context) {
    if (foods == null) {
      foods = [];
      getFoods();
    }

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.appbartext),
          ),
          body: _getCategorizedItems()),
    );
  }

  Padding _getCategorizedItems() {
    return Padding(
      padding: CustomPaddings.mainScaffoldPadding.getPadding(),
      child: ListView.builder(
        itemCount: foodsCount,
        itemBuilder: (context, index) {
          if (foods![index].foodCategory == widget.category) {
            return FoodContainer(
              model: foods![index],
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
