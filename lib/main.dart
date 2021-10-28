import 'package:flutter/material.dart';
import 'package:islami/Home/HomeScreen.dart';

void main() {
  runApp(MyApplication());
}

class MyThemeDta {
  static const Color primarycolor = Color.fromARGB(255, 183, 147, 95);
  static final ThemeData lighttheme = ThemeData(
      primaryColor: MyThemeDta.primarycolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ));
  static final ThemeData darktheme = ThemeData(
      primaryColor: MyThemeDta.primarycolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
          )));
}

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      theme: MyThemeDta.lighttheme,
      darkTheme: MyThemeDta.darktheme,
      routes: {HomeScreen.routename: (buildContext) => HomeScreen()},
      initialRoute: HomeScreen.routename,
    );
  }
}
