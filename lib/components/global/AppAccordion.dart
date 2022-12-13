import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/utils/colors.dart';
import 'package:grocery_store/utils/icons.dart';

class AppAccordion extends StatefulWidget {
  final bool isOpen;
  final Widget header;
  final Text content;
  final Widget? label;

  const AppAccordion({
    super.key,
    required this.header,
    required this.content,
    required this.isOpen,
    this.label,
  });

  @override
  State<AppAccordion> createState() => _AppAccordionState();
}

class _AppAccordionState extends State<AppAccordion> {
  Widget _header = const Text("Default header");
  Text _content = const Text("Default content");
  bool _isOpen = false;
  Widget? _label;

  @override
  void initState() {
    _header = widget.header;
    _content = widget.content;
    _isOpen = widget.isOpen;
    _label = widget.label;
    super.initState();
  }

  SvgPicture _setSvgArrow() {
    print(_isOpen);
    if (_isOpen) {
      return SvgPicture.asset(AppPathIcons.downArrowSvg);
    }
    return SvgPicture.asset(AppPathIcons.backArrowSvg);
  }

  Widget _buildHeader() {
    if (_label != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _header,
          Container(
            child: _label,
          ),
        ],
      );
    }
    return _header;
  }

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
              trailing: _setSvgArrow(),
              collapsedBackgroundColor:
                  Theme.of(context).expansionTileTheme.collapsedBackgroundColor,
              backgroundColor:
                  Theme.of(context).expansionTileTheme.backgroundColor,
              collapsedIconColor:
                  Theme.of(context).expansionTileTheme.collapsedIconColor,
              collapsedTextColor:
                  Theme.of(context).expansionTileTheme.collapsedTextColor,
              textColor: Theme.of(context).expansionTileTheme.textColor,
              iconColor: Theme.of(context).expansionTileTheme.iconColor,
              title: _buildHeader(),
              onExpansionChanged: (value) {
                setState(() {
                  _isOpen = !_isOpen;
                });
              },
              initiallyExpanded: _isOpen,
              children: [
                SizedBox(
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
