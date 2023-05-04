import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Screen_View/Log_In.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register_Data.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register_Phone.dart';
import 'package:tab_cash/Presentaion/Screen_View/Verification.dart';

class RouteGenerator {
  static const String RegDataScreen = "RegisterData";
  static const String LogInScreen = "LogIn";
  static const String RegPhoneScreen = "RegisterPhone";
  static const String VerificationScreen = "Verification";

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
