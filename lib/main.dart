import 'package:flutter/material.dart';
import 'package:grocery_store/pages/CartPage.dart';
import 'package:grocery_store/pages/FavouritePage.dart';
import 'package:grocery_store/utils/theme.dart';

import 'package:grocery_store/pages/CatalogPage.dart';
import 'package:grocery_store/pages/ExplorePage.dart';
import 'package:grocery_store/pages/ProductDetailPage.dart';
import 'package:grocery_store/pages/AccountPage.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.getLightTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const CatalogPage(),
        '/explore': (context) => const ExplorePage(),
        '/cart': (context) => const CartPage(),
        '/favourite': (context) => const FavouritePage(),
        '/account': (context) => const AccountPage(),
      },
    ),
  );
}
