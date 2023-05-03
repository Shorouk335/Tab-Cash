import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/Theme.dart';

Widget  AuthFirstWidgets (BuildContext context ,String Text1 , String Img  ,{String? Text2} ){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${Text1}" ,style: Theme.of(context).textTheme.bodyText1,),
        Image(image: AssetImage(
            "${Img}"),
          height:GetHeight(context)*0.2,
          width: GetWidth(context)*0.4,),
          (Text2 != null) ?
          Text("${Text2}",style: Theme.of(context).textTheme.bodyText2 ,) :
              SizedBox()
      ],

    ),
  );


}