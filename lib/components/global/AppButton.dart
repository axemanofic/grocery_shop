import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final Color textColor;

  const AppButton({
    super.key,
    required this.buttonColor,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: buttonColor),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
