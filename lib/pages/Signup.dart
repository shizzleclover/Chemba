import 'package:chemba/pages/LandingPage.dart';
import 'package:chemba/pages/signin.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String? selectedRole = 'Basic User'; // Initially selected role

  @override
  Widget build(BuildContext context) {
    Color myColor = Color.fromRGBO(210, 217, 209, 1);
    Color myColor2 = Color.fromRGBO(82, 130, 101, 1);
    Color myColor3 = Color.fromRGBO(0, 0, 0, 0.65);
    Color myColor4 = Color.fromRGBO(0, 0, 0, 1);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 62.0, right: 62.0, top: 60.0, bottom: 30.0),
              child: Center(
                child: Image.asset(
                  'Assets/Images/chemba.png',
                  width: 600,
                  height: 100,
                ),
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextField(
                style: TextStyle(
                  color: myColor,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: myColor,
                  hintText: 'User Name',
                  hintStyle: TextStyle(fontWeight: FontWeight.w800, color: myColor4, fontSize: 20, fontFamily: 'Manrope'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextField(
                style: TextStyle(
                  color: myColor,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: myColor,
                  hintText: 'Email',
                  hintStyle: TextStyle(fontWeight: FontWeight.w800, color: myColor4, fontSize: 20, fontFamily: 'Manrope'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  color: myColor,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: myColor,
                  hintText: 'Password',
                  hintStyle: TextStyle(fontWeight: FontWeight.w800, color: myColor4, fontSize: 20, fontFamily: 'Manrope'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: myColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                ),
                value: selectedRole,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedRole = newValue;
                  });
                },
                items: <String>['Basic User', 'Garbage Collector', 'Scrap Dealer']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        color: myColor4, // Change color to desired color
                        fontSize: 18, // Change font size to desired size
                        fontWeight: FontWeight.normal, // Change font weight to desired weight
                        fontFamily: 'Manrope', // Change font family to desired font
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Landingpage()), 
                    );
                  },
                  child: Container(
                    width: 318,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: myColor2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Already Have An Account?',
                  style: TextStyle(color: myColor3, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'Manrope'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: myColor4, fontFamily: 'Manrope', fontWeight: FontWeight.w700, fontSize: 17.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
