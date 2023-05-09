// Function to Return Widgets(Text1+image+Text2) that Show in Register and Login Pages
import 'package:flutter/material.dart';

Widget Common_Register_Login_Widgets(BuildContext context, String Text1, String Img,
    {String? Text2}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        //Text1
        Text(
          "${Text1}",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        //Image
        Image(
          image: AssetImage("${Img}"),
          height: 180, //177.9 ,//GetHeight(context)*0.2,
          width: 200,
        ),
        //Text2 if It in Page
        (Text2 != null)
            ? Text(
                "${Text2}",
                style: Theme.of(context).textTheme.bodyText2,
              )
            : SizedBox()
      ],
    ),
  );
}
