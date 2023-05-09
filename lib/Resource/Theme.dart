import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';

// to Get Screen Height
dynamic GetHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
// to Get Screen Width

dynamic GetWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

// TextStyleTheme of Application
ThemeData ThemeApp = ThemeData(
  textTheme: TextTheme(
    bodyText1: txtStyle(ColorManager.DarkGrayColor, 20.0, false),
    bodyText2: txtStyle(ColorManager.DarkGrayColor, 15.0, false),
  ),
);

//Function return TextStyle
TextStyle txtStyle(Color color, var doublesize, bool weight) {
  return TextStyle(
    color: color,
    fontSize: doublesize,
    fontWeight: (weight) ? FontWeight.bold : null,
    decoration: TextDecoration.none,
  );
}
