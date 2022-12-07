import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final Color? textColor;
  final Function()? onPressed;

  const AppButton({
    super.key,
    required this.buttonColor,
    required this.text,
    required this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
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
              child: Container(
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
