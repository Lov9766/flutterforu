import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/login_page.dart';


import 'pages/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.blue,
        theme: ThemeData.light(),
        //themeMode: ThemeMode.light,
        //darkTheme: ThemeData(brightness: Brightness.dark),
       // home: LoginPage(),
        initialRoute: "/home",
        routes: {
          "/loginpage":(context)=>LoginPage(),
          "/":(context)=>LoginPage(),
          "/home":(context)=>HomePage()
          }
        );
  }
}
