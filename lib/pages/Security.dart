import 'package:chemba/pages/Profile.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:chemba/pages/FAQ.dart';
import 'package:chemba/pages/Forecast.dart';
import 'package:chemba/pages/LandingPage.dart'; 
import 'package:chemba/pages/Security.dart';
import 'package:chemba/pages/Signin.dart';
import 'package:chemba/pages/Support.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  Color myColor = Color.fromRGBO(210, 217, 209, 1);
  Color myColor2 = Color.fromRGBO(82, 130, 101, 1);
  Color myColor3 = Color.fromRGBO(0, 0, 0, 0.65);
  Color myColor4 = Color.fromRGBO(0, 0, 0, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'Assets/Images/chemba.png',
                    height: 60,
                
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Security & Privacy',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          color: myColor2,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: myColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                       );
                      },
                      child: Row(
                        children: [
                          IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/PrivacyPolicy.svg',
                    width: 30,
                    height: 30,
                  ), onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                       );
                    },
                  ),
                          SizedBox(width: 10),
                          Text(
                            'Privacy Policy ',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: myColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                       );
                      },
                      child: Row(
                        children: [
                          IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/Terms.svg',
                    width: 30,
                    height: 30,
                  ), onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                       );
                    },
                  ),
                          SizedBox(width: 10),
                          Text(
                            'Terms Of Service ',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: myColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                       );
                      },
                      child: Row(
                        children: [
                          IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/Devices.svg',
                    width: 30,
                    height: 30,
                  ), onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                       );
                    },
                  ),
                          SizedBox(width: 10),
                          Text(
                            'Devices',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
           
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: BottomAppBar(
          height: 90,
          color: myColor2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/HomeIcon.svg',
                    width: 35,
                    height: 35,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/StackIcon.svg',
                    width: 35,
                    height: 35,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Landingpage()),
                    );
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/LeafIcon.svg',
                    width: 35,
                    height: 35,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForecastPage()),
                    );
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/LogoIcon.svg',
                    width: 35,
                    height: 35,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
