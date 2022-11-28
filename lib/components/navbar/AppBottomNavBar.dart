import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_store/components/navbar/AppBottomNavItem.dart';
import 'package:grocery_store/utils/colors.dart';
import 'package:grocery_store/utils/icons.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;

  const BottomNavBar({super.key, required this.selectedIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState(this.selectedIndex);
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  _BottomNavBarState(this._selectedIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Theme.of(context).bottomAppBarColor,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBottomNavItem(
                  label: "Shop",
                  iconPath: AppPathIcons.shopSvg,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', ((route) => false));
                  },
                  selected: _selectedIndex == 0,
                ),
                AppBottomNavItem(
                  label: "Explore",
                  iconPath: AppPathIcons.exploreSvg,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                    Navigator.pushReplacementNamed(context, '/explore');
                  },
                  selected: _selectedIndex == 1,
                ),
                AppBottomNavItem(
                  label: "Cart",
                  iconPath: AppPathIcons.cartSvg,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                    Navigator.pushReplacementNamed(context, '/cart');
                  },
                  selected: _selectedIndex == 2,
                ),
                AppBottomNavItem(
                  label: "Favourite",
                  iconPath: AppPathIcons.favouriteSvg,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                    Navigator.pushReplacementNamed(context, '/favourite');
                  },
                  selected: _selectedIndex == 3,
                ),
                AppBottomNavItem(
                  label: "Account",
                  iconPath: AppPathIcons.accountSvg,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 4;
                    });
                    Navigator.pushReplacementNamed(context, '/account');
                  },
                  selected: _selectedIndex == 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
