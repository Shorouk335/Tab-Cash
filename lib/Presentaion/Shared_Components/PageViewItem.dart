import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/Theme.dart';

import '../../Data/Models/PageViewModel.dart';


// for Make pageView on the OnBording Screen
Widget PageViewItem({
  // class of PageViewModel with data of one item
  required PageViewModel? model,
  required BuildContext context,
}) {
  // Text + disc + Img
  return Column(
    children: [
      SizedBox(height: 50,),
      Center(
          child: Image(
            width: GetWidth(context)*0.8,
            image: AssetImage(
                "${model?.img}"),
            height:GetHeight(context)/model?.Hsize,
            //   fit: BoxFit.contain,
          )),
      Text("${model?.title}",
          style: txtStyle(Colors.white, 25.0, true)

      ),
      SizedBox(height: 30,),
       Container(

         child: Text("${model?.disc}",
              style: txtStyle(Colors.white, 15.0, false), maxLines: 3,
         textAlign: TextAlign.center,
         ),
       ),




    ],
  ) ;
}