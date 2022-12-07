import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppAccountList extends StatelessWidget {
  final List<Widget> children;

  const AppAccountList({super.key, required this.children});

  Widget buildSeparator(BuildContext context, int index) {
    return const Divider(
      height: 1,
      // color: Theme.of(context).dividerColor,
    );
  }

  Widget buildItem(BuildContext context, int index) {
    return children[index];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: buildItem,
      itemCount: children.length,
    );
  }
}
