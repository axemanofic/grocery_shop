import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSettings {
  final String title;
  final String icon;

  AppSettings({required this.title, required this.icon});
}

class Product {
  final String imageUrl = 'https://robohash.org/hicveldicta.png';
  final String name;
  final String description;
  final double price;

  Product({
    required this.name,
    required this.description,
    required this.price,
  });
}
