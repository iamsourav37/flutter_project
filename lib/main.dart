import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/MyRoutes.dart';

import 'HomePage.dart';
import 'LoginPage.dart';
import 'HomeComponents/BgChanger.dart';
import 'HomeComponents/DesiProgrammer.dart';
import 'HomeComponents/ProfileCard.dart';
import 'LCO/LCOHome.dart';
import 'LCO/SpanishNumber.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Again",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.black87,
      ),
      initialRoute: '/login',
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.bgChangerRoute: (context) => BgChanger(),
        MyRoutes.desiProgrammerRoute: (context) => DesiProgrammer(),
        MyRoutes.profileCardRoutes: (context) => ProfileCard(),
        MyRoutes.lcoHomeRoutes: (context) => LCOHomeScreen(),
        MyRoutes.spanishNumberRoutes: (context) => SpanishNumber(),
      },
    );
  }
}
