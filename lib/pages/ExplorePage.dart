import 'package:flutter/material.dart';
import 'package:grocery_store/components/global/AppButton.dart';
import 'BasePage.dart';

class ExplorePage extends BasePage {
  @override
  final int indexPage = 1;

  const ExplorePage({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: Text("Explore Page!"),
        ),
        AppButton(
          text: "Explore page",
          textColor: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(
                color: Colors.white,
              )
              .color,
        ),
      ],
    );
  }
}
