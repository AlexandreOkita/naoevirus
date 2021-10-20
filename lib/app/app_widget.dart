import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nao é virus",
      theme: ThemeData(
        primaryColor: Color(0xff07004D),
        accentColor: Color(0xffEB8A90),
        scaffoldBackgroundColor: Color(0xffF3DFBF)
      ),
    ).modular();
  }
//#ff07004D
//#ff2D82B7
//#ff42E2B8
//#ffF3DFBF
//#ffEB8A90
}