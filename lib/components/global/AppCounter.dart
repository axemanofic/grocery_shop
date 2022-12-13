import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/utils/colors.dart';
import 'package:grocery_store/utils/icons.dart';

class AppCounter extends StatefulWidget {
  final int initValue;

  const AppCounter({super.key, this.initValue = 1});

  @override
  State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {
  int _count = 1;
  final double _size = 40.0;
  Color? _minusBtnColor;

  @override
  void initState() {
    _count = widget.initValue;
    super.initState();
  }

  Color? _setColorSvg() {
    if (_count > 1) {
      return Theme.of(context).primaryColor;
    }
    if (_count < 2) {
      return Theme.of(context)
          .copyWith(primaryColor: AppColors.optionalColor)
          .primaryColor;
    }
  }

  void handleMinus() {
    setState(() {
      _count--;
      _minusBtnColor = _setColorSvg();
    });
  }

  void handlePlus() {
    setState(() {
      _count++;
      _minusBtnColor = _setColorSvg();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          iconSize: _size,
          padding: const EdgeInsets.all(0.0),
          constraints: const BoxConstraints(),
          icon: SvgPicture.asset(AppPathIcons.minusSvg, color: _setColorSvg()),
          onPressed: _count > 1 ? handleMinus : null,
        ),
        Container(
          margin: const EdgeInsets.only(left: 8.0, right: 8.0),
          width: _size,
          height: _size,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(17.0)),
            border: Border.all(
              color: Theme.of(context)
                  .copyWith(primaryColor: AppColors.optionalColor)
                  .primaryColor,
            ),
          ),
          child: Center(child: Text("$_count")),
        ),
        IconButton(
          iconSize: _size,
          padding: const EdgeInsets.all(0.0),
          constraints: const BoxConstraints(),
          icon: SvgPicture.asset(AppPathIcons.plusSvg),
          onPressed: handlePlus,
        ),
      ],
    );
  }
}
