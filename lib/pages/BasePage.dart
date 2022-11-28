import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_store/components/navbar/AppBottomNavBar.dart';
import 'package:grocery_store/utils/theme.dart';

class BasePage extends StatelessWidget {
  final int indexPage = 0;

  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: buildBody(context),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: indexPage,
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container();
  }
}
