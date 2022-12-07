import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/utils/icons.dart';

class AppAccordion extends StatefulWidget {
  final bool isOpen;
  final Text header;
  final Text content;

  const AppAccordion({
    super.key,
    required this.header,
    required this.content,
    required this.isOpen,
  });

  @override
  State<AppAccordion> createState() =>
      _AppAccordionState(header, content, isOpen);
}

class _AppAccordionState extends State<AppAccordion> {
  Text _header;
  Text _content;
  bool _isOpen;

  _AppAccordionState(this._header, this._content, this._isOpen);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          surfaceTintColor: Colors.transparent,
          shadowColor: Theme.of(context)
              .copyWith(shadowColor: Colors.transparent)
              .shadowColor,
          color: Theme.of(context).backgroundColor,
          borderOnForeground: false,
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: ExpansionTile(
              tilePadding: const EdgeInsets.symmetric(horizontal: .0),
              trailing: SvgPicture.asset(AppPathIcons.backArrowSvg),
              collapsedBackgroundColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              collapsedIconColor: Colors.black,
              collapsedTextColor: Colors.black,
              textColor: Colors.black,
              iconColor: Colors.black,
              title: _header,
              children: [
                Container(
                  width: double.infinity,
                  child: _content,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
