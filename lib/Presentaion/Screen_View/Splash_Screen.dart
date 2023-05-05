import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../Resource/Color_Manager.dart';
import '../../Resource/String_Manager.dart';
import '../../Resource/Theme.dart';

// Page start at the begin of application

class Splach extends StatefulWidget {
  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  //delay for 4 sec only Then go to next page
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacementNamed(context,RouteGenerator.OnBoardingScreen);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.DarkGrayColor,
      body: Stack(
          children: [
        Image.asset(
          "assets/images/Splash.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
            Positioned(
                top: GetHeight(context)*0.35,
                left: GetWidth(context)*0.3,
                child : Text ( "Tap Cash" ,style: txtStyle(
                  ColorManager.OrangeColor ,
                  40.0 ,
                  true

                )
                )),

      ]),
    );
  }
}
