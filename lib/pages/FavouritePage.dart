import 'package:flutter/material.dart';
import 'package:grocery_store/components/global/AppButton.dart';
import 'BasePage.dart';

class FavouritePage extends BasePage {
  @override
  final int indexPage = 3;

  const FavouritePage({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: Text("Account Page!"),
        ),
        AppButton(
          buttonColor: Theme.of(context).primaryColor,
          text: "Catalog",
          textColor: Colors.black,
        ),
      ],
    );
  }
}
