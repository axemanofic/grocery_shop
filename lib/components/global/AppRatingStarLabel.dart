import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/utils/colors.dart';
import 'package:grocery_store/utils/icons.dart';
import 'package:grocery_store/utils/rating.dart';

class AppRatingStar extends StatelessWidget {
  final Rating rating;

  const AppRatingStar({super.key, required this.rating});

  Color _setColor(BuildContext context, int index) {
    if (rating.index >= index) {
      return Theme.of(context)
          .copyWith(primaryColor: AppColors.starColor)
          .primaryColor;
    }
    return Theme.of(context)
        .copyWith(primaryColor: AppColors.optionalColor)
        .primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    List<SvgPicture> stars = List.generate(
      5,
      (index) => SvgPicture.asset(
        AppPathIcons.starSvg,
        color: _setColor(context, index),
      ),
    );

    return Row(
      children: stars.map((e) => e).toList(),
    );
  }
}
