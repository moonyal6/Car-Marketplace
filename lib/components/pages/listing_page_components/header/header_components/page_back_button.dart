import 'package:flutter/material.dart';

class PageBackButton extends StatelessWidget {
  const PageBackButton({this.iconColor});

  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return !Navigator.canPop(context)
        ? SizedBox() :
    IconButton(
      icon: Icon(Icons.arrow_back),
      color: iconColor ?? Colors.black,
      iconSize: 30,
      onPressed: () => Navigator.pop(context),
    );
  }
}