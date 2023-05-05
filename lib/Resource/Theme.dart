import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';



dynamic GetHeight (BuildContext context){

  return MediaQuery.of(context).size.height ;
}
dynamic GetWidth (BuildContext context){

  return MediaQuery.of(context).size.width ;
}




 ThemeData ThemeApp= ThemeData(
  textTheme: TextTheme(
    bodyText1: txtStyle(ColorManager.DarkGrayColor, 20.0, false),
    bodyText2: txtStyle(ColorManager.GrayColor, 15.0, false),

  ),

);
TextStyle txtStyle (Color color ,var doublesize , bool weight){
  return TextStyle(
    color: color ,
    fontSize: doublesize ,
    fontWeight: (weight)? FontWeight.bold : null ,
    decoration: TextDecoration.none,


  );
}