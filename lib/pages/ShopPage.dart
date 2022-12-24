import 'package:flutter/material.dart';
import 'package:grocery_store/components/global/AppButton.dart';
import 'BasePage.dart';

class ShopPage extends BasePage {
  const ShopPage({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: Text("ShopPage Page!"),
        ),
        AppButton(
          text: "Catalog",
          textColor: Colors.black,
        ),
      ],
    );
  }
}
