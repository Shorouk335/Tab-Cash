import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register_Data.dart';

class RouteGenerator {
  static const String RegData = "RegisterData";

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteGenerator.RegData:
        return MaterialPageRoute(builder: (_) => RegisterData());


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
