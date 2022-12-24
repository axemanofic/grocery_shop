import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_store/components/navbar/AppBottomNavBar.dart';
import 'package:grocery_store/utils/icons.dart';
import 'package:grocery_store/utils/theme.dart';

class BasePage extends StatelessWidget {
  final int indexPage = 0;

  const BasePage({super.key});

  double? _getHightToolbar() {
    if (indexPage == 0 || indexPage == 4) {
      return 0;
    }
    return 40.0;
  }

  String _getTitle() {
    String title = "";
    switch (indexPage) {
      case 3:
        title = "Favourite";
        break;
      case 2:
        title = "My cart";
        break;
      default:
        break;
    }
    return title;
  }

  IconButton? _buildLeading(BuildContext context) {
    // if (indexPage != 3 || indexPage != 2) {
    //   return IconButton(
    //     icon: SvgPicture.asset(AppPathIcons.leftArrowSvg),
    //     onPressed: () {
    //       Navigator.pop(context);
    //     },
    //   );
    // }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: _buildLeading(context),
        toolbarHeight: _getHightToolbar(),
        backgroundColor: Theme.of(context).backgroundColor,
        shadowColor: Theme.of(context)
            .copyWith(shadowColor: Colors.transparent)
            .shadowColor,
        foregroundColor: Theme.of(context).textTheme.headline6?.color,
        title: Center(child: Text(_getTitle())),
      ),
      body: buildBody(context),
      bottomNavigationBar: buildNavbar(context),
    );
  }

  Widget buildNavbar(BuildContext context) {
    return AppBottomNavBar(
      selectedIndex: indexPage,
    );
  }

  Widget buildBody(BuildContext context) {
    return Container();
  }
}
