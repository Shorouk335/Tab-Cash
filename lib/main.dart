import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tab_cash/Presentaion/Screen_View/Register_Data.dart';
import 'package:tab_cash/Resource/Theme.dart';

void main() {
  runApp(TabCash());
}

class TabCash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeApp,
     home: RegisterData(),
    );
  }
}

