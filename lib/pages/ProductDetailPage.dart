import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/components/global/AppAccordion.dart';
import 'package:grocery_store/components/global/AppButton.dart';
import 'package:grocery_store/components/global/AppCounter.dart';
import 'package:grocery_store/components/global/AppNutritionLabel.dart';
import 'package:grocery_store/components/global/AppRatingStarLabel.dart';
import 'package:grocery_store/components/product/detail/AppCarousel.dart';
import 'package:grocery_store/components/product/detail/AppProductInfo.dart';
import 'package:grocery_store/utils/colors.dart';
import 'package:grocery_store/utils/icons.dart';
import 'package:grocery_store/utils/rating.dart';
import 'BasePage.dart';

class ProductDetailPage extends BasePage {
  final double _padding = 25.0;

  const ProductDetailPage({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AppCarousel(),
          Padding(
            padding: EdgeInsets.all(_padding),
            child: Column(
              children: [
                const AppProductInfo(),
                const AppAccordion(
                  header: Text("Product Detail"),
                  content: Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                  ),
                  isOpen: true,
                ),
                const AppAccordion(
                  header: Text("Product Detail"),
                  label: AppNutritionLabel(),
                  content: Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                  ),
                  isOpen: false,
                ),
                const AppAccordion(
                  header: Text("Product Detail"),
                  label: AppRatingStar(rating: Rating.three),
                  content: Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                  ),
                  isOpen: false,
                ),
              ],
            ),
          )
          // AppButton()
        ],
      ),
    );
  }
}
