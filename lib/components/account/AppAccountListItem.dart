import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_store/utils/icons.dart';

class AppAccountListItem extends StatelessWidget {
  final String iconPath;
  final String label;

  final double fontSize = 16.0;

  const AppAccountListItem({
    super.key,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(iconPath),
                  margin: EdgeInsets.only(right: 10.0),
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    // fontWeight: FontWeight.w600,
                    fontSize: fontSize,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(AppPathIcons.backArrowSvg),
          ],
        ),
      ),
    );
  }
}
