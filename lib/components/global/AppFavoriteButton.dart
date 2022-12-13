import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/utils/icons.dart';

class AppFavoriteButton extends StatefulWidget {
  final Function onPressed;

  const AppFavoriteButton({
    super.key,
    required this.onPressed,
  });

  @override
  State<AppFavoriteButton> createState() => _AppFavoriteButtonState(onPressed);
}

class _AppFavoriteButtonState extends State<AppFavoriteButton> {
  final double? iconSize = 24.0;
  bool _isSelected = false;
  final Function _onPressed;
  double? splashRadius = Material.defaultSplashRadius;

  _AppFavoriteButtonState(this._onPressed);

  Color? _setColor() => _isSelected ? Colors.green : null;

  @override
  Widget build(BuildContext context) {
    double effectiveIconSize = iconSize ?? IconTheme.of(context).size ?? 24.0;
    return InkWell(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
        _onPressed();
      },
      radius: 0,
      child: SvgPicture.asset(AppPathIcons.heartSvg, color: _setColor()),
    );
  }
}
