import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/main.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final EdgeInsetsGeometry padding;
  final Function()? onPressed;
  final double? hight;

  const AppButton({
    super.key,
    required this.text,
    required this.textColor,
    this.padding = const EdgeInsets.all(20.0),
    this.onPressed,
    this.hight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: hight,
      child: Padding(
        padding: padding,
        child: Material(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(19.0)),
          child: InkWell(
            highlightColor: Theme.of(context).highlightColor,
            splashColor: Theme.of(context).splashColor,
            borderRadius: const BorderRadius.all(Radius.circular(19.0)),
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodyText1?.fontSize,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context)
                          .copyWith(primaryColor: Colors.white)
                          .primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
