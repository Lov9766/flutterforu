import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/login_page.dart';
import 'package:flutter_application_4/pages/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
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
        //theme: ThemeData.light(),
       debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.light,textTheme: GoogleFonts.lancelotTextTheme()
        ),
       // home: LoginPage(),
        // initialRoute: "/home",
        routes: {
          "/":(context)=>LoginPage(),
          Routes.loginRoute:(context)=>LoginPage(),
          Routes.homeRoute:(context)=>HomePage()
          }
        );
  }
}
