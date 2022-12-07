import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/utils/colors.dart';
import 'package:grocery_store/utils/generate_route.dart';
import 'package:grocery_store/utils/icons.dart';
import 'package:grocery_store/utils/theme.dart';

class AppFavouriteProductListItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final double price;

  const AppFavouriteProductListItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(
            context,
            GenerateRote.generateProductDetailPage(),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                imageUrl,
                width: 80,
                height: 80,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5.0),
                      Text(description)
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text("\$$price"),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(AppPathIcons.backArrowSvg),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
