import 'package:bursam_app/const/const_strings.dart';
import 'package:bursam_app/data/dbhelper.dart';
import 'package:bursam_app/models/food_model.dart';
import 'package:bursam_app/screens/foods/foods_categorized.dart';
import 'package:bursam_app/statements/foods_screen_statement.dart';
import 'package:bursam_app/utilities/custom_border_radius.dart';
import 'package:bursam_app/utilities/custom_box_decoration.dart';
import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:bursam_app/utilities/custom_text_styles.dart';
import 'package:flutter/material.dart';

class FoodsScreen extends StatefulWidget {
  const FoodsScreen({super.key});

  @override
  State<FoodsScreen> createState() => _FoodsScreenState();
}

class _FoodsScreenState extends FoodsScreenStatement {
  @override
  Widget build(BuildContext context) {
    if (foods == null) {
      foods = [];
      getFoods();
    }
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: CustomPaddings.mainScaffoldPadding.getPadding(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _getCategories(),
                const SizedBox(
                  height: 15,
                ),
                Expanded(child: _getItems())
              ],
            )),
      ),
    );
  }

  Row _getCategories() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        _FoodCategoryContainer(
          text: ConstStrings.foodCategoryMD,
        ),
        _FoodCategoryContainer(
          text: ConstStrings.foodCategoryPT,
        ),
        _FoodCategoryContainer(
          text: ConstStrings.foodCategoryDT,
        ),
      ],
    );
  }

  ListView _getItems() {
    return ListView.builder(
      itemCount: foodsCount,
      itemBuilder: (context, index) {
        return FoodContainer(
          model: foods![index],
        );
      },
    );
  }
}

class FoodContainer extends StatefulWidget {
  const FoodContainer({Key? key, required FoodModel model})
      : _model = model,
        super(key: key);

  final FoodModel _model;

  @override
  State<FoodContainer> createState() => _FoodContainerState();
}

class _FoodContainerState extends State<FoodContainer> {
  DbHelper dbHelper = DbHelper();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: CustomPaddings.foodContainerPadding.getPadding(),
      child: Container(
        decoration: CustomBoxDecoration.foodContainerDecoration.getDecoration(),
        width: width,
        height: height * 0.2,
        child: Padding(
          padding: CustomPaddings.mainScaffoldPadding.getPadding(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _foodImage(width),
              _foodInfo(context),
              _foodSaveButton()
            ],
          ),
        ),
      ),
    );
  }

  IconButton _foodSaveButton() {
    return IconButton(
      iconSize: 35,
      onPressed: () async {
        setState(() {
          FoodModel updatedModel = FoodModel(
              id: widget._model.id,
              foodCategory: widget._model.foodCategory,
              foodName: widget._model.foodName,
              foodImagePath: widget._model.foodImagePath,
              isSaved: !widget._model.isSaved!);

          dbHelper.foodUpdate(updatedModel);

          widget._model.isSaved = !widget._model.isSaved!;
        });
      },
      icon: widget._model.isSaved!
          ? Icon(
              Icons.bookmark,
              color: CustomColors.bookmarkYellow,
            )
          : const Icon(
              Icons.bookmark,
              color: CustomColors.bookmarkWhite,
            ),
    );
  }

  Column _foodInfo(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget._model.foodName ?? "",
            style: CustomTextStyles.foodContainerHeadline.getStyle(context)),
        Text(widget._model.foodCategory ?? "",
            style: CustomTextStyles.foodContainerSubtitle.getStyle(context)),
      ],
    );
  }

  SizedBox _foodImage(double width) {
    return SizedBox(
      width: width * 0.3,
      child: ClipRRect(
        borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
        child: Image.asset(
          widget._model.foodImagePath ?? "",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class _FoodCategoryContainer extends StatelessWidget {
  const _FoodCategoryContainer({
    Key? key,
    required String text,
  })  : _text = text,
        super(key: key);

  final String _text;

  @override
  Widget build(BuildContext context) {
    String? category;

    if (_text == ConstStrings.foodCategoryMD) {
      category = "MEAT DISH";
    } else if (_text == ConstStrings.foodCategoryPT) {
      category = "PASTRY";
    } else if (_text == ConstStrings.foodCategoryDT) {
      category = "DESSERT";
    }

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => FoodsCategorized(
                      category: category ?? "",
                      appbartext: _text,
                    )));
      },
      child: Container(
        decoration: CustomBoxDecoration.foodContainerDecoration.getDecoration(),
        child: Padding(
          padding: CustomPaddings.foodCategoryContainerPadding.getPadding(),
          child: Text(
            _text,
            style: CustomTextStyles.normalTextStyle
                .getStyle(context, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
