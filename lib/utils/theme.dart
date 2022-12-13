import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/utils/colors.dart';

class ThemeApp {
  static ThemeData getLightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
      backgroundColor: Colors.white,
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        padding: EdgeInsets.all(0),
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: Colors.transparent,
        textColor: Colors.transparent,
        tileColor: Colors.transparent,
        selectedColor: Colors.transparent,
        selectedTileColor: Colors.transparent,
      ),
      textTheme: const TextTheme(
        headline6: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 20.0,
          color: Colors.black,
        ),
        headline4: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
          color: Colors.black,
        ),
        bodyText1: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 16.0,
          color: Colors.black,
        ),
        button: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 16.0,
          color: Colors.black,
        ),
      ),
      shadowColor: Colors.grey,
      iconTheme: const IconThemeData(
        color: AppColors.primaryColor,
      ),
      dividerColor: Colors.grey,
      splashColor: AppColors.primaryColor[100],
      highlightColor: AppColors.primaryColor[100],
      bottomAppBarColor: Colors.transparent,
      scaffoldBackgroundColor: Colors.white,
      expansionTileTheme: const ExpansionTileThemeData(
        collapsedBackgroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        collapsedIconColor: Colors.black,
        collapsedTextColor: Colors.black,
        textColor: Colors.black,
        iconColor: Colors.black,
      ),
    );
  }
}
