import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';

Widget CommonButton (BuildContext context ,String txt , void Function() ontap){
  return Padding(
      padding: EdgeInsets.all(10.0) ,
      child :InkWell(
        onTap: ontap,
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: ColorManager.OrangeColor.withOpacity(0.8)),
          child: Center(child: Text("$txt",style: Theme.of(context).textTheme.bodyText1,)),
        ),
      )
  );
}