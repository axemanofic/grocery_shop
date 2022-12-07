import 'package:flutter/material.dart';
import 'package:grocery_store/components/favourite/AppFavouriteProductList.dart';
import 'package:grocery_store/components/global/AppButton.dart';
import 'package:grocery_store/utils/items.dart';
import 'BasePage.dart';

class FavouritePage extends BasePage {
  @override
  final int indexPage = 3;

  const FavouritePage({super.key});

  static List<Product> products = [
    Product(
      name: "Sprite Can",
      description: "325ml, Price",
      price: 1.50,
    ),
    Product(
      name: "Coca cola",
      description: "325ml, Price",
      price: 2.50,
    ),
    Product(
      name: "Fanta Can",
      description: "325ml, Price",
      price: 3.99,
    ),
    Product(
      name: "Sprite Can",
      description: "325ml, Price",
      price: 5.50,
    ),
    Product(
      name: "Sprite Can",
      description: "325ml, Price",
      price: 5.50,
    ),
    Product(
      name: "Sprite Can",
      description: "325ml, Price",
      price: 5.50,
    ),
    Product(
      name: "Sprite Can",
      description: "325ml, Price",
      price: 5.50,
    ),
    Product(
      name: "Sprite Can",
      description: "325ml, Price",
      price: 5.50,
    ),
    Product(
      name: "Sprite Can",
      description: "325ml, Price",
      price: 5.50,
    ),
    Product(
      name: "Sprite Can",
      description: "325ml, Price",
      price: 5.50,
    ),
    Product(
      name: "Sprite Can",
      description: "325ml, Price",
      price: 5.50,
    ),
    Product(
      name: "Sprite Can",
      description: "325ml, Price",
      price: 5.50,
    ),
  ];

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AppFavouriteProductList(
            children: products,
          ),
        ),
        AppButton(
          buttonColor: Theme.of(context).primaryColor,
          text: "Catalog",
          textColor: Colors.black,
          onPressed: () {},
        ),
      ],
    );
  }
}
