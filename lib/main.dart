import 'package:flutter/material.dart';
import 'pages/signup.dart';
import 'pages/Signin.dart';
import 'pages/LandingPage.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: SignUpPage(),
     
      debugShowCheckedModeBanner: false,
    );
  }
}

