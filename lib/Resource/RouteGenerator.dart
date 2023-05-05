import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Screen_View/Log_In.dart';
import 'package:tab_cash/Presentaion/Screen_View/OnBoarding/On_Boarding.dart';
import 'package:tab_cash/Presentaion/Screen_View/OnBoarding/after_onboarding.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register/Common_Register/Register_Data.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register/Common_Register/Register_Phone.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register/Common_Register/Verification.dart';
import 'package:tab_cash/Presentaion/Screen_View/Splash_Screen.dart';

class RouteGenerator {
  static const String RegDataScreen = "RegisterData";
  static const String LogInScreen = "LogIn";
  static const String RegPhoneScreen = "RegisterPhone";
  static const String VerificationScreen = "Verification";
  static const String SplachScreen = "Splash";
  static const String OnBoardingScreen = "OnBoarding";
  static const String afterBoardingScreen = "afterBoarding";


  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteGenerator.RegDataScreen:
        return MaterialPageRoute(builder: (_) => RegisterData());

      case RouteGenerator.LogInScreen:
        return MaterialPageRoute(builder: (_) => LogIn());

      case RouteGenerator.RegPhoneScreen:
        return MaterialPageRoute(builder: (_) => RegisterPhone());

      case RouteGenerator.VerificationScreen:
        return MaterialPageRoute(builder: (_) => Verification());

      case RouteGenerator.SplachScreen:
        return MaterialPageRoute(builder: (_) => Splach());

      case RouteGenerator.OnBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoarding());

      case RouteGenerator.afterBoardingScreen:
        return MaterialPageRoute(builder: (_) => AfterOnBoarding());


      default:
        return MaterialPageRoute(builder: (_) => RegisterData());
    }
  }

// static Route<dynamic> UnDefinedRoute() {
//   return MaterialPageRoute(
//     builder: (_) => Scaffold(
//       body: Center(
//         child: Text("NOT FOUND"),
//       ),
//     ),
//   );
// }
}
