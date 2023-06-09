// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:bursam_app/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:bursam_app/data/dbhelper.dart';
import 'package:bursam_app/models/place_model.dart';
import 'package:bursam_app/statements/places_screen_statement.dart';
import 'package:bursam_app/utilities/custom_border_radius.dart';
import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:bursam_app/utilities/custom_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key, required this.placeCategory});
  final String placeCategory;
  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends PlacesScreenStatement {
  @override
  Widget build(BuildContext context) {
    if (places == null) {
      places = [];
      getPlaces();
    }

    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: Text(
            widget.placeCategory.toUpperCase(),
            style: CustomTextStyles.appBarTextStyle
                .getStyle(context, color: CustomColors.bookmarkWhite),
          ),
        ),
        body: _itemsListViewBuild());
  }

  ListView _itemsListViewBuild() {
    return ListView.builder(
      itemCount: places!.length,
      itemBuilder: (context, index) {
        if (places![index].placeCategory == widget.placeCategory) {
          return _ItemsBuild(
            model: places![index],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class _ItemsBuild extends StatefulWidget {
  const _ItemsBuild({Key? key, required PlaceModel model})
      : _model = model,
        super(key: key);

  final PlaceModel _model;

  @override
  State<_ItemsBuild> createState() => _ItemsBuildState();
}

class _ItemsBuildState extends State<_ItemsBuild> with ShowBottomSheet {
  DbHelper dbHelper = DbHelper();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: CustomPaddings.mainScaffoldPadding.getPadding(),
      child: SizedBox(
        width: width,
        height: height * 0.2,
        child: InkWell(
          onTap: () async {
            showCustomSheet(
                context, _DetailBottomSheet(placeModel: widget._model));
          },
          child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: CustomBorderRadius.stackBRadius.getBRadius()),
              child: Padding(
                  padding: CustomPaddings.bnavBarItemsPadding.getPadding(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _getImage(width),
                      _getPlaceName(width, context),
                      _getSaveButton()
                    ],
                  ))),
        ),
      ),
    );
  }

  IconButton _getSaveButton() {
    return IconButton(
      onPressed: () async {
        setState(() {
          PlaceModel updatedModel = PlaceModel(
              id: widget._model.id,
              placeCategory: widget._model.placeCategory,
              placeName: widget._model.placeName,
              placeExplanation: widget._model.placeExplanation,
              placeLocation: widget._model.placeLocation,
              placeImgPath: widget._model.placeImgPath,
              isSaved: !widget._model.isSaved!);

          dbHelper.placeUpdate(updatedModel);

          widget._model.isSaved = !widget._model.isSaved!;
        });
      },
      icon: widget._model.isSaved!
          ? Icon(
              Icons.bookmark,
              color: CustomColors.bookmarkYellow,
            )
          : const Icon(Icons.bookmark_border_outlined),
    );
  }

  SizedBox _getPlaceName(double width, BuildContext context) {
    return SizedBox(
      width: width * 0.3,
      child: Text(
        widget._model.placeName ?? "",
        style: CustomTextStyles.normalTextStyle.getStyle(context),
      ),
    );
  }

  SizedBox _getImage(double width) {
    return SizedBox(
      width: width * 0.35,
      child: ClipRRect(
        borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
        child: Image.asset(widget._model.placeImgPath ?? ""),
      ),
    );
  }
}

class _DetailBottomSheet extends StatelessWidget {
  const _DetailBottomSheet({
    Key? key,
    required PlaceModel placeModel,
  })  : _placeModel = placeModel,
        super(key: key);

  final PlaceModel _placeModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: CustomPaddings.drawerPadding.getPadding(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            indent: width * 0.4,
            endIndent: width * 0.4,
            thickness: 3,
            color: CustomColors.dividerBlack,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${_placeModel.placeName}",
            style: CustomTextStyles.normalTextStyle.getStyle(context),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${_placeModel.placeExplanation}",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(CustomColors.mainGreen)),
              onPressed: () {
                _launchUrl(url: _placeModel.placeLocation ?? "");
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Go to ${_placeModel.placeName}"),
                  const Icon(Icons.location_on_outlined),
                ],
              ))
        ],
      ),
    );
  }

  Future<void> _launchUrl({required url}) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
