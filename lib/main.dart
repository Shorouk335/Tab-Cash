import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';

void main() {
  runApp(TabCash());
}

class TabCash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // to Control of  statusBar Color and It's Icon Color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      // to remove debugShowCheckedModeBanner
      debugShowCheckedModeBanner: false,
      //Theme of Application
      theme: ThemeApp,
      //Start Route
      initialRoute: RouteGenerator.SplachScreen,
      //Control of All Routs
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
