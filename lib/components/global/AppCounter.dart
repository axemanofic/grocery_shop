import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/utils/colors.dart';
import 'package:grocery_store/utils/icons.dart';

class AppCounter extends StatefulWidget {
  const AppCounter({super.key});

  @override
  State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {
  int _count = 1;
  final double _size = 20.0;

  Color? _setColorSvg() {
    if (_count > 1) {
      return Theme.of(context).primaryColor;
    }
    return Theme.of(context)
        .copyWith(primaryColor: AppColors.optionalColor)
        .primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: _size,
          height: _size,
          child: IconButton(
            icon: SvgPicture.asset(AppPathIcons.minusSvg),
            color: _setColorSvg(),
            onPressed: () {
              setState(() {
                if (_count > 1) {
                  _count--;
                }
              });
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: Center(child: Text("$_count")),
        ),
        SizedBox(
          width: _size,
          height: _size,
          child: IconButton(
            icon: SvgPicture.asset(AppPathIcons.plusSvg),
            onPressed: () {
              setState(() {
                _count++;
              });
            },
          ),
        ),
      ],
    );
  }
}
