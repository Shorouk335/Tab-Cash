import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';
import 'package:tab_cash/Resource/Theme.dart';
//Function to Create Dialog when user Register as parent or child
Future<dynamic> ShowCorrectDialog(context, {String? img ,String? txt}) {
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.noHeader,
    dialogBorderRadius: BorderRadius.circular(30.0),
   dialogBackgroundColor: ColorManager.LightGrayColor,
    // the content of dialog
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 50,),
        //IMG Correct
        Image.asset(img!, width: 98,height:98 ,),
        SizedBox(height: 24,),
        //Text
        Center(
            child: Text(
          "${txt}",
          style: txtStyle(ColorManager.DarkGrayColor, 15.0, false),
        )),
       SizedBox(height: 37,),
      ]
        //log in
  ),
  ).show();
}


