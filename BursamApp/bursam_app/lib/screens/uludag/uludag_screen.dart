import 'package:bursam_app/const/const_strings.dart';
import 'package:bursam_app/screens/uludag/uludag_activities_screen.dart';
import 'package:bursam_app/utilities/custom_border_radius.dart';
import 'package:bursam_app/utilities/custom_box_shodows.dart';
import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:bursam_app/utilities/custom_text_styles.dart';
import 'package:bursam_app/utilities/img_paths.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UludagScreen extends StatefulWidget {
  const UludagScreen({super.key});

  @override
  State<UludagScreen> createState() => _UludagScreenState();
}

class _UludagScreenState extends State<UludagScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: _Uludag_screen_view()));
  }
}

class _Uludag_screen_view extends StatelessWidget {
  const _Uludag_screen_view({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [_Info_widget(), _Main_widget()],
    );
  }
}

class _Main_widget extends StatelessWidget {
  const _Main_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: CustomPaddings.mainScaffoldPadding.getPadding(),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [CustomBoxShodows.savedContainerShadow.getShodow()]),
          child: Stack(
            fit: StackFit.expand,
            children: [
              _getSnowboardImage(),
              _getStackText(context),
              _getGoToButton(context),
              _getActivitiesButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Positioned _getActivitiesButton(BuildContext context) {
    return Positioned(
      right: 10,
      bottom: 5,
      child: Row(
        children: [
          ElevatedButton(
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(CustomColors.mainGreen),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (_) => const UludagActivitiesScreen()));
              },
              child: Row(
                children: [
                  Text(
                    ConstStrings.uludagActButtonText,
                    style: CustomTextStyles.normalTextStyle
                        .getStyle(context, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ))
        ],
      ),
    );
  }

  Positioned _getGoToButton(BuildContext context) {
    return Positioned(
      left: 10,
      bottom: 5,
      child: Row(
        children: [
          ElevatedButton(
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(CustomColors.mainGreen),
              ),
              onPressed: () {
                _launcUrl(url: ConstStrings.uludagGoogleMaps);
              },
              child: Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  Text(
                    ConstStrings.uludagGMButtonText,
                    style: CustomTextStyles.normalTextStyle
                        .getStyle(context, color: Colors.white),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Positioned _getStackText(BuildContext context) {
    return Positioned(
        left: 10,
        top: 10,
        child: Container(
          decoration: BoxDecoration(
              color: CustomColors.uludagStackTextBarGreen,
              borderRadius: CustomBorderRadius.rPlaceCardBRadius.getBRadius()),
          child: Text(ConstStrings.uludagScreenStackText,
              style: CustomTextStyles.uludagStackText.getStyle(context)),
        ));
  }

  ClipRRect _getSnowboardImage() {
    return ClipRRect(
      borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
      child:
          Image.asset(ImagePathsJPG.snowboarduludag.path(), fit: BoxFit.fill),
    );
  }

  Future<void> _launcUrl({required url}) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

class _Info_widget extends StatelessWidget {
  const _Info_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: CustomPaddings.mainScaffoldPadding.getPadding(),
      child: SizedBox(
        width: width,
        height: height * 0.3,
        child: Card(
          elevation: 12,
          child: Row(children: [
            Image.asset(
              ImagePathsPNG.camagaci.path(),
              width: width * 0.4,
              height: 250,
            ),
            SizedBox(
              width: width * 0.4,
              child: Text(
                ConstStrings.uludagInfo,
                style: CustomTextStyles.uludagInfoText.getStyle(context),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
