import 'package:flutter/material.dart';
import 'package:grocery_store/pages/AccountPage.dart';
import 'package:grocery_store/pages/CartPage.dart';
import 'package:grocery_store/pages/ExplorePage.dart';
import 'package:grocery_store/pages/FavouritePage.dart';
import 'package:grocery_store/pages/ProductDetailPage.dart';
import 'package:grocery_store/pages/ShopPage.dart';
import 'package:grocery_store/pages/UnknowPage.dart';
import 'package:grocery_store/utils/pages.dart';

class GenerateRote {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Widget page;
    print(settings.name);
    switch (settings.name) {
      case AppPage.shop:
        page = const ShopPage();
        break;
      case AppPage.explore:
        page = const ExplorePage();
        break;
      case AppPage.cart:
        page = const CartPage();
        break;
      case AppPage.favourite:
        page = const FavouritePage();
        break;
      case AppPage.account:
        page = const AccountPage();
        break;
      default:
        page = const UnknownPage();
    }
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: ((context, animation, secondaryAnimation) {
        return page;
      }),
      transitionsBuilder: ((context, animation, secondaryAnimation, child) {
        return child;
      }),
      transitionDuration: const Duration(seconds: 0),
      reverseTransitionDuration: const Duration(seconds: 0),
    );
  }

  static Route<dynamic> generateUnknownPage(RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: ((context, animation, secondaryAnimation) {
        return const UnknownPage();
      }),
      transitionsBuilder: ((context, animation, secondaryAnimation, child) {
        return child;
      }),
      transitionDuration: const Duration(seconds: 0),
      reverseTransitionDuration: const Duration(seconds: 0),
    );
  }

  static Route<dynamic> generateProductDetailPage() {
    return PageRouteBuilder(
      pageBuilder: ((context, animation, secondaryAnimation) {
        return ProductDetailPage();
      }),
    );
  }
}
