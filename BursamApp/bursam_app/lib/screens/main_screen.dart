import 'package:animations/animations.dart';
import 'package:bursam_app/const/const_strings.dart';
import 'package:bursam_app/screens/foods/foods_screen.dart';
import 'package:bursam_app/screens/places/places_category_screen.dart';
import 'package:bursam_app/screens/uludag/uludag_screen.dart';
import 'package:bursam_app/utilities/custom_border_radius.dart';
import 'package:bursam_app/utilities/custom_box_decoration.dart';
import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:bursam_app/utilities/custom_durations.dart';
import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:bursam_app/utilities/custom_text_styles.dart';
import 'package:bursam_app/utilities/img_paths.dart';
import 'package:bursam_app/widgets/customDrawer.dart';
import 'package:bursam_app/widgets/positionedStackInfo.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  String _appBarTitle = ConstStrings.mainAppBarTextB;
  static const List<Widget> _widgetPages = <Widget>[
    MainScreenBuild(),
    PlacesCategoryScreen(),
    FoodsScreen(),
    UludagScreen()
  ];

  void changeAppBarText() {
    if (_selectedIndex == 1) {
      _appBarTitle = ConstStrings.mainAppBarTextP;
    } else if (_selectedIndex == 2) {
      _appBarTitle = ConstStrings.mainAppBarTextF;
    } else if (_selectedIndex == 3) {
      _appBarTitle = ConstStrings.mainAppBarTextU;
    } else {
      _appBarTitle = ConstStrings.mainAppBarTextB;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          bottomNavigationBar: _customBNavBar(),
          drawer: const CustomDrawer(),
          appBar: _customAppBar(context),
          body: PageTransitionSwitcher(
              duration: CustomDurations.mainDuration.getDuration(),
              transitionBuilder:
                  (child, primaryAnimation, secondaryAnimation) =>
                      SharedAxisTransition(
                        transitionType: SharedAxisTransitionType.horizontal,
                        animation: primaryAnimation,
                        secondaryAnimation: secondaryAnimation,
                        child: child,
                      ),
              child: _widgetPages.elementAt(_selectedIndex))),
    );
  }

  AppBar _customAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text(
        _appBarTitle,
        style: CustomTextStyles.appBarTextStyle
            .getStyle(context, color: CustomColors.bookmarkWhite),
      ),
    );
  }

  Container _customBNavBar() {
    return Container(
      margin: CustomPaddings.mainNavBarPadding.getPadding(),
      decoration: CustomBoxDecoration.bNavBarDecoration.getDecoration(),
      child: SafeArea(
        left: true,
        right: true,
        child: Padding(
          padding: CustomPaddings.bnavBarItemsPadding.getPadding(),
          child: GNav(
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  changeAppBarText();
                });
              },
              gap: 3,
              backgroundColor: CustomColors.mainGreen,
              color: CustomColors.bookmarkWhite,
              activeColor: CustomColors.bookmarkWhite,
              tabBackgroundColor: CustomColors.bNavBarBlack,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: ConstStrings.navBarItemH,
                ),
                GButton(
                  icon: Icons.place,
                  text: ConstStrings.navBarItemP,
                ),
                GButton(
                  icon: Icons.fastfood_outlined,
                  text: ConstStrings.navBarItemF,
                ),
                GButton(
                  icon: Icons.forest_outlined,
                  text: ConstStrings.navBarItemU,
                ),
              ]),
        ),
      ),
    );
  }
}

class MainScreenBuild extends StatefulWidget {
  const MainScreenBuild({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreenBuild> createState() => MainScreenBuildState();
}

class MainScreenBuildState extends State<MainScreenBuild> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Column(children: [
      Container(
        height: height * 0.43,
        decoration:
            CustomBoxDecoration.mainScreenContainerDecoration.getDecoration(),
        child: Padding(
          padding: CustomPaddings.mainScaffoldPadding.getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Card(
                    color: CustomColors.iconCardWhite,
                    child: Icon(Icons.place),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(ConstStrings.welcomeBursaTxt,
                      style: CustomTextStyles.normalTextStyle.getStyle(context,
                          color: CustomColors.bookmarkWhite)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const _RecommendedPlaceCard(),
            ],
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: CustomPaddings.mainScaffoldPadding.getPadding(),
          child: SizedBox(
            child: Row(
              children: [
                _RecommendedCustomCard(
                  icon: Icons.fastfood_outlined,
                  title: ConstStrings.customCardF,
                  content: ConstStrings.customCardContetF,
                  imagePath: ImagePathsJPG.iskender.path(),
                ),
                _RecommendedCustomCard(
                    icon: Icons.forest_outlined,
                    title: ConstStrings.customCardA,
                    content: ConstStrings.customCardContentA,
                    imagePath: ImagePathsJPG.teleferik.path())
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

class _RecommendedCustomCard extends StatelessWidget {
  const _RecommendedCustomCard({
    Key? key,
    required IconData icon,
    required String title,
    required String content,
    required String imagePath,
  })  : _icon = icon,
        _title = title,
        _content = content,
        _imagePath = imagePath,
        super(key: key);

  final IconData _icon;
  final String _title;
  final String _content;
  final String _imagePath;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Expanded(
        child: Column(
      children: [
        Row(
          children: [
            Icon(_icon),
            const SizedBox(
              width: 5,
            ),
            Text(
              _title,
              style: Theme.of(context).textTheme.headline6!.copyWith(),
            ),
          ],
        ),
        Stack(
          children: [
            SizedBox(
              height: height * 0.2,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          CustomBorderRadius.stackBRadius.getBRadius()),
                  child: ClipRRect(
                    borderRadius: CustomBorderRadius.stackBRadius.getBRadius(),
                    child: Image.asset(_imagePath, fit: BoxFit.fill),
                  )),
            ),
            PositionedStackInfo(
                text: _content,
                textStyle: CustomTextStyles.positionedStackInfoTextStyleSmall
                    .getStyle(context)),
          ],
        ),
      ],
    ));
  }
}

class _RecommendedPlaceCard extends StatelessWidget {
  const _RecommendedPlaceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height * 0.32,
      child: Card(
        semanticContainer: true,
        shape: RoundedRectangleBorder(
            borderRadius: CustomBorderRadius.rPlaceCardBRadius.getBRadius()),
        elevation: 20,
        child: Stack(
          children: [
            SizedBox(
              width: width,
              height: height,
              child: ClipRRect(
                borderRadius: CustomBorderRadius.rPlaceCardBRadius.getBRadius(),
                child: Image.asset(ImagePathsJPG.yesilbursa.path(),
                    fit: BoxFit.fill),
              ),
            ),
            PositionedStackInfo(
              text: ConstStrings.rPlaceCardText,
              textStyle: CustomTextStyles.positionedStackInfoTextStyleNormal
                  .getStyle(context),
            ),
          ],
        ),
      ),
    );
  }
}
