import 'package:flutter/material.dart';
import 'package:grocery_store/utils/colors.dart';

class AppCarouselProgressBar extends StatelessWidget {
  final int selectIndex;
  final int itemCount;
  final double _borderRadius = 13.0;

  final double _selectedItemWidth = 16.0;

  final double _barSize = 5.0;

  const AppCarouselProgressBar({
    super.key,
    this.selectIndex = 0,
    this.itemCount = 1,
  });

  Color? _getSelectedColor(BuildContext context, int index) {
    if (index == selectIndex) {
      return Theme.of(context).primaryColor;
    } else {
      return AppColors.barColor;
    }
  }

  Widget _buildBar(BuildContext context, int index) {
    return AnimatedContainer(
      curve: Curves.easeOutExpo,
      duration: const Duration(milliseconds: 500),
      margin: const EdgeInsets.only(left: 0, right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
        color: _getSelectedColor(context, index),
      ),
      child: SizedBox(
        width: index == selectIndex ? _selectedItemWidth : _barSize,
        height: _barSize,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> bars = List.generate(
      itemCount,
      ((index) => _buildBar(context, index)),
    );
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: bars.map((e) => e).toList(),
      ),
    );
  }
}
