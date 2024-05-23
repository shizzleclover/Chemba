import 'package:chemba/pages/LandingPage.dart';
import 'package:chemba/pages/signup.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  

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
              padding: EdgeInsets.only(top: 200.0, bottom: 10.0),
              child: Center(
                child: Image.asset(
                  'Assets/Images/chemba.png',
                  width: 600,
                  height: 100,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 65.0, right: 65.0),
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
                  contentPadding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),  
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 65.0, right: 65.0),
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
                  contentPadding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),  
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Padding(
  padding: EdgeInsets.only(right: 60.0), 
  child: GestureDetector(
    onTap: () {
     
    },
    child: Text(
      'Forgot Password?',
      style: TextStyle(
        color: myColor4, 
        fontWeight: FontWeight.w600, 
        fontSize: 15, 
        fontFamily: 'Manrope',
      ),
    ),
  ),
),

  ],
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
                        width: 312,
                        height: 85, 
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
                
                SizedBox(height: 20),
                Text(
                  'Don\'t have an account yet?',
                  style: TextStyle(color: myColor3, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'Manrope'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignUpPage()
                    ));
                  },
                  child: Text(
                    'Register Now',
                    style: TextStyle(color: myColor4, fontFamily: 'Manrope', fontWeight: FontWeight.w700, fontSize: 17.0)
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
