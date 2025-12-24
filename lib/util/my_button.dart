import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;

  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      height: 50,
      child: Text(text),
    );
  }
}
