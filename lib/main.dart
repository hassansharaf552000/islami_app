import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';

void main() {}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      routes: {HomeScreen.routename: (buildContext) => HomeScreen()},
      initialRoute: HomeScreen.routename,
    );
  }
}
