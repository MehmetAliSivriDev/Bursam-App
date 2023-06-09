import 'package:bursam_app/screens/saved/saved_categories_screen.dart';
import 'package:bursam_app/utilities/custom_border_radius.dart';
import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utilities/drawer_urls.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  late DrawerUrls _drawerUrls;

  @override
  void initState() {
    _drawerUrls = DrawerUrls();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: CustomBorderRadius.drawerBRadius.getBRadius(),
      child: Drawer(
        child: Padding(
          padding: CustomPaddings.drawerPadding.getPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to Green Bursa!",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: CustomColors.mainGreen),
              ),
              const SizedBox(
                height: 10,
              ),
              _drawerListTile(context,
                  url: _drawerUrls.instagramUrl,
                  icon: FontAwesomeIcons.instagram,
                  text: "INSTAGRAM"),
              _drawerListTile(context,
                  url: _drawerUrls.twitterUrl,
                  icon: FontAwesomeIcons.twitter,
                  text: "TWITTER"),
              _drawerListTile(context,
                  url: _drawerUrls.youtubeUrl,
                  icon: FontAwesomeIcons.youtube,
                  text: "YOUTUBE"),
              _drawerListTile(context,
                  url: _drawerUrls.officalSiteUrl,
                  icon: Icons.location_city_outlined,
                  text: "OFFICAL WEBSITE"),
              _drawerListTile(context,
                  url: _drawerUrls.bursasporUrl,
                  icon: Icons.sports_soccer_outlined,
                  text: "BURSASPOR WEBSITE"),
              _savedItemButton(context, icon: Icons.bookmark, text: "SAVED"),
            ],
          ),
        ),
      ),
    );
  }

  Card _savedItemButton(BuildContext context,
      {required IconData icon, required text}) {
    return Card(
      color: CustomColors.mainGreen,
      shape: RoundedRectangleBorder(
          borderRadius: CustomBorderRadius.stackBRadius.getBRadius()),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => const SavedCategoriesScreen()));
        },
        leading: Icon(icon, color: Colors.white),
        title: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }

  Card _drawerListTile(BuildContext context,
      {required url, required IconData icon, required text}) {
    return Card(
      color: CustomColors.mainGreen,
      shape: RoundedRectangleBorder(
          borderRadius: CustomBorderRadius.stackBRadius.getBRadius()),
      child: ListTile(
        onTap: () {
          _launchUrl(url: url);
        },
        leading: Icon(icon, color: Colors.white),
        title: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white),
        ),
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
