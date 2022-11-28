import 'package:flutter/material.dart';
import 'package:grocery_store/components/global/AppButton.dart';
import 'BasePage.dart';

class ProductDetailPage extends BasePage {
  const ProductDetailPage({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: Text("Login Page!"),
        ),
        // AppButton()
      ],
    );
  }
}
