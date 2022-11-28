import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_store/utils/colors.dart';
import 'package:grocery_store/utils/icons.dart';

class AppBottomNavItem extends StatefulWidget {
  final String label;
  final String iconPath;
  final Function() onPressed;
  final bool selected;

  const AppBottomNavItem({
    super.key,
    required this.label,
    required this.iconPath,
    required this.onPressed,
    required this.selected,
  });

  @override
  State<AppBottomNavItem> createState() => _AppBottomNavItemState();
}

class _AppBottomNavItemState extends State<AppBottomNavItem> {
  Color? _setColor(context) {
    if (widget.selected) {
      return Theme.of(context).iconTheme.color;
    } else {
      return Theme.of(context)
          .iconTheme
          .copyWith(
            color: AppColors.defaultColor,
          )
          .color;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 66,
      height: 66,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: widget.selected ? null : widget.onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                widget.iconPath,
                color: _setColor(context),
                height: 24,
              ),
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 12,
                  color: _setColor(context),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
