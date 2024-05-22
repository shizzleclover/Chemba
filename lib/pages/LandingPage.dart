import 'package:flutter/material.dart';
import 'package:chemba/pages/signup.dart';
import 'package:chemba/pages/signin.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    Color myColor = Color.fromRGBO(210, 217, 209, 1);
    Color myColor2 = Color.fromRGBO(82, 130, 101, 1);
    Color myColor3 = Color.fromRGBO(0, 0, 0, 0.65);
    Color myColor4 = Color.fromRGBO(0, 0, 0, 1);


    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          color: myColor2,
      ),
    );
  }
}