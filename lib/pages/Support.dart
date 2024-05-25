import 'package:chemba/pages/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'HomePage.dart';
import 'package:chemba/pages/FAQ.dart';
import 'package:chemba/pages/Forecast.dart';
import 'package:chemba/pages/LandingPage.dart'; 
import 'package:chemba/pages/Security.dart';
import 'package:chemba/pages/Signin.dart';
import 'package:chemba/pages/Support.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  Color myColor = Color.fromRGBO(210, 217, 209, 1);
  Color myColor2 = Color.fromRGBO(82, 130, 101, 1);

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
                        'Help & Support',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold,
                          color: myColor2,
                          fontSize: 27,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'We’re always here to answer any of your questions, and support of any kind.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),

            SizedBox(height: 70),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                              'Assets/Icons/Chat.svg',
                              width: 30,
                              height: 30,
                            ), 
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SigninPage()),
                              );
                            },
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Chat With Our Customer Support ',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                              'Assets/Icons/Email.svg',
                              width: 30,
                              height: 30,
                            ), 
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SigninPage()),
                              );
                            },
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Send Us An E-mail ',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w200,
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Connect with us on:',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.bold,
                    color: myColor2,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              children: [
               
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/Linkedin.svg',
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
                    'Assets/Icons/Twitter.svg',
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
                    'Assets/Icons/Youtube.svg',
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
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/Facebook.svg',
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
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/Facebook.svg',
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
