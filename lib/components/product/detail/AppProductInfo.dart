import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store/components/global/AppCounter.dart';
import 'package:grocery_store/components/global/AppFavoriteButton.dart';
import 'package:grocery_store/utils/icons.dart';

class AppProductInfo extends StatelessWidget {
  const AppProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Naturel Red Apple",
                style: TextStyle(
                  fontSize: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 24)
                      .fontSize,
                ),
              ),
              AppFavoriteButton(
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "1kg, Price",
            style: TextStyle(
              color: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.grey)
                  .color,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppCounter(),
              Text(
                "\$4999",
                style: TextStyle(
                  fontSize: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 24)
                      .fontSize,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
