import 'package:flutter/material.dart';
import 'package:grocery_store/pages/CartPage.dart';
import 'package:grocery_store/pages/FavouritePage.dart';
import 'package:grocery_store/utils/generate_route.dart';
import 'package:grocery_store/utils/pages.dart';
import 'package:grocery_store/utils/theme.dart';

import 'package:grocery_store/pages/ShopPage.dart';
import 'package:grocery_store/pages/ExplorePage.dart';
import 'package:grocery_store/pages/ProductDetailPage.dart';
import 'package:grocery_store/pages/AccountPage.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.getLightTheme(),
      initialRoute: AppPage.shop,
      onGenerateRoute: GenerateRote.generateRoute,
      onUnknownRoute: GenerateRote.generateUnknownPage,
    ),
  );
}
