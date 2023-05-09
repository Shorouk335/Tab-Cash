import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import '../../Resource/Color_Manager.dart';
import '../../Resource/Theme.dart';

// Page start at the begin of application

class Splach extends StatefulWidget {
  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
 // delay for 1 sec only Then go to next page
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1,microseconds: 5000), () {
        Navigator.pushReplacementNamed(context,RouteGenerator.OnBoardingScreen);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.DarkGrayColor,
      body: Stack(
          children: [
        //BackGround IMg
        Image.asset(
          "assets/images/Splash.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        //Applicattion Name
        Positioned(
                top:GetHeight(context)*0.38,
                left: GetWidth(context)*0.3,
                child : Text ( "Tap Cash" ,style: txtStyle(
                  ColorManager.OrangeColor ,
                  45.0 ,
                  true

                )
                )),

      ]),
    );
  }
}
