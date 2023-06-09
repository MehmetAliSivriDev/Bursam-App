import 'package:bursam_app/const/const_strings.dart';
import 'package:bursam_app/screens/saved/saved_items_screen.dart';
import 'package:bursam_app/utilities/custom_colors.dart';
import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:bursam_app/utilities/custom_text_styles.dart';
import 'package:flutter/material.dart';

class SavedCategoriesScreen extends StatefulWidget {
  const SavedCategoriesScreen({super.key});

  @override
  State<SavedCategoriesScreen> createState() => _SavedCategoriesScreen();
}

class _SavedCategoriesScreen extends State<SavedCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstStrings.savedCategoryAppBarText),
      ),
      body: Padding(
        padding: CustomPaddings.mainScaffoldPadding.getPadding(),
        child: _categoriesBuild(),
      ),
    );
  }

  Column _categoriesBuild() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
      _SavedCategoriesCard(
        icon: Icons.location_on,
        category: ConstStrings.savedCategoryPS,
      ),
      SizedBox(
        height: 25,
      ),
      _SavedCategoriesCard(
        icon: Icons.fastfood,
        category: ConstStrings.savedCategoryFS,
      ),
      SizedBox(
        height: 25,
      ),
      _SavedCategoriesCard(
        icon: Icons.forest,
        category: ConstStrings.savedCategoryUG,
      ),
    ]);
  }
}

class _SavedCategoriesCard extends StatelessWidget {
  const _SavedCategoriesCard({
    required IconData icon,
    required String category,
    Key? key,
  })  : _icon = icon,
        _category = category,
        super(key: key);

  final IconData _icon;
  final String _category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => SavedItemsScreen(category: _category)));
      },
      child: Card(
        color: CustomColors.mainGreen,
        elevation: 15,
        child: Padding(
          padding: CustomPaddings.foodCategoryContainerPadding.getPadding(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                _icon,
                color: CustomColors.bookmarkWhite,
              ),
              Text(
                _category,
                style: CustomTextStyles.normalTextStyle
                    .getStyle(context, color: CustomColors.bookmarkWhite),
              )
            ],
          ),
        ),
      ),
    );
  }
}
