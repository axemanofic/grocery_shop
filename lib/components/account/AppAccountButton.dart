import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_store/utils/colors.dart';
import 'package:grocery_store/utils/icons.dart';

class AppAccountButton extends StatelessWidget {
  const AppAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(19.0)),
          color: Theme.of(context)
              .copyWith(backgroundColor: AppColors.optionalColor)
              .backgroundColor,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SvgPicture.asset(AppPathIcons.logOutSvg),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Log out",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  // SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
