import 'package:chemba/pages/Security.dart';
import 'package:chemba/pages/Signin.dart';
import 'package:chemba/pages/Support.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:chemba/pages/FAQ.dart';
import 'package:chemba/pages/Forecast.dart';
import 'package:chemba/pages/LandingPage.dart'; 

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'Assets/Images/chemba.png',
                        height: 60,
                      ),
                     
                    ],
                  ),
                SizedBox(width: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold,
                          color: myColor2,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 40),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                            decoration: BoxDecoration(
                              color: myColor2,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'DM',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: 36,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DAVID MBUGUA',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                  fontSize: 32,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'david@gmail.com',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w100,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                ],
              ),
            ),
            
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
                        
                      },
                      child: Row(
                        children: [
                         
                          SizedBox(width: 10),
                          Text(
                            'Points',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '1,000',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 20,
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
                padding: EdgeInsets.all(10),
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
                      MaterialPageRoute(builder: (context) => SupportPage()),
                       );
                      },
                      child: Row(
                        children: [
                          IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/HelpSupport.svg',
                    width: 35,
                    height: 35,
                  ), onPressed: () {  
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SupportPage()),
                       );
                  },
                  ),
                          SizedBox(width: 10),
                          Text(
                            'Help & Support ',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 20,
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
                padding: EdgeInsets.all(10),
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
                      MaterialPageRoute(builder: (context) => SecurityPage()),
                       );
                      },
                      child: Row(
                        children: [
                          IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/Security.svg',
                    width: 35,
                    height: 35,
                  ), onPressed: () { 

                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecurityPage()),
                       );
                   },
                  ),
                          
                          Text(
                            'Security & Privacy ',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),

            SizedBox(height: 120),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding: EdgeInsets.all(10),
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
                    'Assets/Icons/LogOut.svg',
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
                            'Log out ',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 20,
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
