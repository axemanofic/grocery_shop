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
      ),
      textTheme: TextTheme(
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
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      bottomAppBarColor: Colors.transparent,
    );
  }
}
