import 'package:bursam_app/const/const_strings.dart';
import 'package:bursam_app/data/dbhelper.dart';
import 'package:bursam_app/models/uludag_activity_model.dart';
import 'package:bursam_app/statements/uludag_activity_screen_statement.dart';
import 'package:bursam_app/utilities/custom_border_radius.dart';
import 'package:bursam_app/utilities/custom_box_shodows.dart';
import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:bursam_app/utilities/custom_text_styles.dart';
import 'package:flutter/material.dart';

class UludagActivitiesScreen extends StatefulWidget {
  const UludagActivitiesScreen({super.key});

  @override
  State<UludagActivitiesScreen> createState() => _UludagActivitiesScreenState();
}

class _UludagActivitiesScreenState extends UludagActivityScreenStatement {
  @override
  Widget build(BuildContext context) {
    if (activities == null) {
      activities = [];
      getActivities();
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(ConstStrings.actScreenABText),
        ),
        body: _getItems(),
      ),
    );
  }

  ListView _getItems() {
    return ListView.builder(
      itemCount: activityCount,
      itemBuilder: (context, index) {
        return _ActivityContainer(model: activities![index]);
      },
    );
  }
}

class _ActivityContainer extends StatefulWidget {
  const _ActivityContainer({
    required UludagActivityModel model,
    Key? key,
  })  : _model = model,
        super(key: key);

  final UludagActivityModel _model;

  @override
  State<_ActivityContainer> createState() => _ActivityContainerState();
}

class _ActivityContainerState extends State<_ActivityContainer> {
  DbHelper dbHelper = DbHelper();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: CustomPaddings.mainScaffoldPadding.getPadding(),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [CustomBoxShodows.savedContainerShadow.getShodow()]),
        width: width,
        height: height * 0.35,
        child: Stack(
          fit: StackFit.expand,
          children: [
            _getImage(),
            _getInfoTextBar(width, context),
            _getSavedButton()
          ],
        ),
      ),
    );
  }

  Positioned _getSavedButton() {
    return Positioned(
        top: 10,
        right: 10,
        child: Card(
          color: CustomColors.stackTextBarWhite,
          child: IconButton(
            iconSize: 35,
            onPressed: () async {
              setState(() {
                UludagActivityModel updatedModel = UludagActivityModel(
                    id: widget._model.id,
                    header: widget._model.header,
                    content: widget._model.content,
                    activityImagePath: widget._model.activityImagePath,
                    isSaved: !widget._model.isSaved!);

                dbHelper.activityUpdate(updatedModel);

                widget._model.isSaved = !widget._model.isSaved!;
              });
            },
            icon: widget._model.isSaved!
                ? Icon(
                    Icons.bookmark,
                    color: CustomColors.bookmarkYellow,
                  )
                : const Icon(
                    Icons.bookmark_border_outlined,
                    color: CustomColors.stackTextBarBlack,
                  ),
          ),
        ));
  }

  Positioned _getInfoTextBar(double width, BuildContext context) {
    return Positioned(
        width: width * 0.80,
        left: 15,
        bottom: 15,
        child: Card(
          color: CustomColors.stackTextBarWhite,
          child: Padding(
            padding: CustomPaddings.bnavBarItemsPadding.getPadding(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget._model.header ?? "",
                  style: CustomTextStyles.savedItemsHeadline.getStyle(context),
                ),
                Text(
                  maxLines: 3,
                  widget._model.content ?? "",
                  style: CustomTextStyles.savedItemsSubtitle.getStyle(context),
                )
              ],
            ),
          ),
        ));
  }

  ClipRRect _getImage() {
    return ClipRRect(
      borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
      child: Image.asset(
        widget._model.activityImagePath ?? "",
        fit: BoxFit.fill,
      ),
    );
  }
}
