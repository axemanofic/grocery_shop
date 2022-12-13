import 'package:flutter/material.dart';
import 'package:grocery_store/utils/colors.dart';

class AppNutritionLabel extends StatelessWidget {
  const AppNutritionLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context)
            .copyWith(primaryColor: AppColors.optionalColor)
            .primaryColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.all(5.0),
      child: const Center(
        child: Text("100gr", style: TextStyle(fontSize: 9.0)),
      ),
    );
  }
}
