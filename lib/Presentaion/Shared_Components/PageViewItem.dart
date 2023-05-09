import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';

import '../../Data/Models/PageViewModel.dart';

// for Make pageView on the OnBording Screen
Widget PageViewItem({
  // class of PageViewModel with data of one item
  required PageViewModel? model,
  required BuildContext context,
}) {
  return Column(
    children: [
      SizedBox(
        height: 30,
      ),
      // Button of Skip or Next
      (model!.button != null)
          ? Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, RouteGenerator.afterBoardingScreen);
                  },
                  child: Text(
                    "${model.button}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ])
          : SizedBox(),
      SizedBox(
        height: 50,
      ),
      //Img
      Center(
          child: Image(
        width: GetWidth(context) * 0.8,
        image: AssetImage("${model.img}"),
        height: GetHeight(context) / model.Hsize,
        //   fit: BoxFit.contain,
      )),
      //title
      Text("${model.title}", style: txtStyle(Colors.white, 25.0, true)),
      SizedBox(
        height: 8,
      ),
      //Discribtion
      Container(
        child: Text(
          "${model.disc}",
          style: txtStyle(Colors.white, 16.0, false),
          maxLines: 3,
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
