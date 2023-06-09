import 'package:bursam_app/const/const_strings.dart';
import 'package:bursam_app/screens/places/places_screen.dart';
import 'package:bursam_app/utilities/custom_border_radius.dart';
import 'package:bursam_app/utilities/custom_box_decoration.dart';
import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:bursam_app/utilities/custom_text_styles.dart';
import 'package:bursam_app/utilities/img_paths.dart';
import 'package:flutter/material.dart';

class PlacesCategoryScreen extends StatefulWidget {
  const PlacesCategoryScreen({super.key});

  @override
  State<PlacesCategoryScreen> createState() => _PlacesCategoryScreenState();
}

class _PlacesCategoryScreenState extends State<PlacesCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: CustomPaddings.placesCategoryPadding.getPadding(),
                child: _categoriesBuild())));
  }

  ListView _categoriesBuild() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        _PlacesCategoryCard(
          text: ConstStrings.placeCategoryMM,
          imagePath: ImagePathsJPG.karagozmuzesi.path(),
          placeCategory: ConstStrings.placeModelCategoryMM,
        ),
        const SizedBox(
          height: 20,
        ),
        _PlacesCategoryCard(
            text: ConstStrings.placeCategorySG,
            imagePath: ImagePathsJPG.kozahan.path(),
            placeCategory: ConstStrings.placeModelCategorySG),
        const SizedBox(
          height: 20,
        ),
        _PlacesCategoryCard(
            text: ConstStrings.placeCategoryRP,
            imagePath: ImagePathsJPG.emirsultancami.path(),
            placeCategory: ConstStrings.placeModelCategoryRP),
        const SizedBox(
          height: 20,
        ),
        _PlacesCategoryCard(
            text: ConstStrings.placeCategoryNB,
            imagePath: ImagePathsJPG.suutcuselalesi.path(),
            placeCategory: ConstStrings.placeModelCategoryNB),
        const SizedBox(
          height: 20,
        ),
        _PlacesCategoryCard(
            text: ConstStrings.placeCategoryMS,
            imagePath: ImagePathsJPG.timsaharena.path(),
            placeCategory: ConstStrings.placeModelCategoryMS),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class _PlacesCategoryCard extends StatelessWidget {
  const _PlacesCategoryCard({
    Key? key,
    required String text,
    required String imagePath,
    required String placeCategory,
  })  : _text = text,
        _imagePath = imagePath,
        _placeCategory = placeCategory,
        super(key: key);

  final String _text;
  final String _imagePath;
  final String _placeCategory;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => PlacesScreen(
                      placeCategory: _placeCategory,
                    )));
      },
      child: Container(
        decoration: CustomBoxDecoration.placeCategoryDecoration.getDecoration(),
        width: width,
        height: height * 0.2,
        child: Padding(
          padding: CustomPaddings.mainScaffoldPadding.getPadding(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.3,
                child: ClipRRect(
                  borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
                  child: Image.asset(
                    _imagePath,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.4,
                child: Text(_text,
                    style: CustomTextStyles.placeCategoryHeadline
                        .getStyle(context)),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: CustomColors.scaffoldColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
