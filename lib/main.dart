import 'package:flutter/material.dart';
import 'package:nike_shoe_store/pages/HomePage.dart';
import 'package:nike_shoe_store/pages/LoginPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFCEDDEE)),
      routes: {
        "/": (context) => LoginPage(),
        "homePage": (context) => HomePage(),
      },
    );
  }
}
