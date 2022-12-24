import 'package:flutter/material.dart';
import 'package:grocery_store/components/global/AppButton.dart';
import 'BasePage.dart';

class UnknownPage extends BasePage {
  const UnknownPage({super.key});
  // @override
  // final int indexPage = -1;

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: const Text("UnknownPage Page!"),
        ),
        AppButton(
          text: "Catalog",
          textColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
