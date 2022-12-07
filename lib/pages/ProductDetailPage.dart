import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/components/global/AppAccordion.dart';
import 'package:grocery_store/components/global/AppButton.dart';
import 'package:grocery_store/components/global/AppCounter.dart';
import 'package:grocery_store/utils/icons.dart';
import 'BasePage.dart';

class ProductDetailPage extends BasePage {
  final double _borderRadius = 25.0;
  final double _padding = 25.0;

  const ProductDetailPage({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 500,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(_borderRadius),
                    bottomRight: Radius.circular(_borderRadius),
                  ),
                  image: DecorationImage(
                    image: Image.network(
                      "https://picsum.photos/200/300",
                    ).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(_padding),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(children: [Text("Name"), Text("Nutrition")]),
                      SvgPicture.asset(AppPathIcons.heartSvg)
                    ],
                  ),
                  Row(
                    children: [
                      AppCounter(),
                      Text("\$4999"),
                    ],
                  ),
                  AppAccordion(
                    header: Text("JOPA"),
                    content: Text("JOPA"),
                    isOpen: false,
                  ),
                  AppAccordion(
                    header: Text("JOPA"),
                    content: Text("JOPA"),
                    isOpen: false,
                  ),
                  AppAccordion(
                    header: Text("JOPA"),
                    content: Text("JOPA"),
                    isOpen: false,
                  )
                ],
              ),
            )
            // AppButton()
          ],
        ),
      ),
    );
  }
}
