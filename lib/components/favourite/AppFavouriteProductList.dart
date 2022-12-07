import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grocery_store/utils/items.dart';
import 'package:grocery_store/components/favourite/AppFavouriteProductListItem.dart';

class AppFavouriteProductList extends StatelessWidget {
  final List<Product> children;

  const AppFavouriteProductList({super.key, required this.children});

  Widget _buildSeparator(BuildContext context, int index) {
    return const Divider(height: 1);
  }

  Widget _buildItem(BuildContext context, int index) {
    return AppFavouriteProductListItem(
      imageUrl: children[index].imageUrl,
      name: children[index].name,
      description: children[index].description,
      price: children[index].price,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: _buildItem,
      separatorBuilder: _buildSeparator,
      itemCount: children.length,
    );
  }
}
