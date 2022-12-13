import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_store/components/product/detail/AppCarouselProgressBar.dart';

class AppCarousel extends StatefulWidget {
  const AppCarousel({super.key});

  @override
  State<AppCarousel> createState() => _AppCarouselState();
}

class _AppCarouselState extends State<AppCarousel> {
  final double _borderRadius = 25.0;
  final int itemCount = Random().nextInt(10);
  int _selectIndex = 0;

  Widget _buildItem(BuildContext context, int index) {
    return ClipRRect(
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        child: Image.network(
          'https://picsum.photos/1920/1080',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(_borderRadius),
            bottomRight: Radius.circular(_borderRadius),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              itemBuilder: _buildItem,
              itemCount: itemCount,
              onPageChanged: (value) {
                setState(() {
                  _selectIndex = value;
                });
              },
            ),
            AppCarouselProgressBar(
              itemCount: itemCount,
              selectIndex: _selectIndex,
            ),
          ],
        ),
      ),
    );
  }
}
