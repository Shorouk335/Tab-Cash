//App Route
import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Screen_View/HomePage.dart';
import 'package:tab_cash/Presentaion/Screen_View/Log_In.dart';
import 'package:tab_cash/Presentaion/Screen_View/OnBoarding/On_Boarding.dart';
import 'package:tab_cash/Presentaion/Screen_View/OnBoarding/after_onboarding.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register/Common_Register/Register_Data.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register/Common_Register/Register_Phone.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register/Common_Register/Set_Password.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register/Common_Register/Verification.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register/Register_Child/Register_Phone_Parent.dart';
import 'package:tab_cash/Presentaion/Screen_View/Splash_Screen.dart';
import 'package:tab_cash/Presentaion/Screen_View/dash_board.dart';
import 'package:tab_cash/Presentaion/Screen_View/manage_account.dart';

class RouteGenerator {
  //Variable of All Name Screens in App
  static const String RegDataScreen = "RegisterData";
  static const String LogInScreen = "LogIn";
  static const String RegPhoneScreen = "RegisterPhone";
  static const String RegPhoneParentScreen = "RegisterPhoneParent";
  static const String VerificationScreen = "Verification";
  static const String SplachScreen = "Splash";
  static const String OnBoardingScreen = "OnBoarding";
  static const String afterBoardingScreen = "afterBoarding";
  static const String SetPasswordScreen = "SetPassword";
  static const String HomePageScreen = "HomePage";
  static const String Dash_BoardScreen = "Dash Bord";
  static const String ManageAccountScreen = "ManageAccount";

//Function take Name Screen then Show Page
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

      case RouteGenerator.SetPasswordScreen:
        return MaterialPageRoute(builder: (_) => SetPassword());

      case RouteGenerator.HomePageScreen:
        return MaterialPageRoute(builder: (_) => HomePage());

      case RouteGenerator.RegPhoneParentScreen:
        return MaterialPageRoute(builder: (_) => RegisterPhoneParent());
      case RouteGenerator.Dash_BoardScreen:
        return MaterialPageRoute(builder: (_) => DashBoard());
      case RouteGenerator.ManageAccountScreen:
        return MaterialPageRoute(builder: (_) => ManageAccounts());

      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }

  // in case of any UnDefinedRoute return to homepage
  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(builder: (_) => HomePage());
  }
}
