// ignore_for_file: unused_import, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day_7_apps/home.dart';
import 'package:flutter/material.dart';

import 'infopage.dart';
import 'last.dart';
import 'location.dart';
import 'login.dart';
import 'otp.dart';

void main() {
  runApp(const MyApp());
}

class MyRoutes {
  static String loginRoutus = "/login";
  static String infoRoutus = "/info";
  static String homeRoutus = "/home";
  static String locationRoutus = "/location";
  static String alstRoutus = "/last";
  static String otpRoutus = "/otp";

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,

      initialRoute: "/login",
      routes: {
        MyRoutes.loginRoutus: (context) => const login(),
        MyRoutes.locationRoutus: (context) => const location(),
        MyRoutes.homeRoutus: (context) => const home(),
        MyRoutes.infoRoutus: (context) => const info(),
        MyRoutes.alstRoutus: (context) => const last(),
        MyRoutes.otpRoutus: (context) => const otp(),

      },
    );
  }
}
