import 'package:chemba/pages/Forecast.dart';
import 'package:flutter/material.dart';
import 'LandingPage.dart';
import 'FAQ.dart';
import 'Educate.dart';
import 'Profile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color myColor = Color.fromRGBO(210, 217, 209, 1);
  Color myColor2 = Color.fromRGBO(82, 130, 101, 1);
  Color myColor3 = Color.fromRGBO(0, 0, 0, 0.65);
  Color myColor4 = Color.fromRGBO(0, 0, 0, 1);

  List<bool> _isSelected = [true, false, false];

  void _onButtonTap(int index) {
    setState(() {
      for (int i = 0; i < _isSelected.length; i++) {
        _isSelected[i] = i == index;
      }
    });
    switch (index) {
      case 0:
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FAQPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EducatePage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'Assets/Images/chemba.png',
                    height: 118,
                  ),
                ),
              ),
              SizedBox(height: 40),  
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _onButtonTap(0),
                    child: Container(
                      width: 100,  
                      height: 60,  
                      margin: EdgeInsets.symmetric(horizontal: 10),  
                      decoration: BoxDecoration(
                        color: _isSelected[0] ? myColor2 : Colors.transparent,
                        border: _isSelected[0] ? null : Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Events',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          color: _isSelected[0] ? Colors.white : Colors.black,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _onButtonTap(1),
                    child: Container(
                      width: 120,  
                      height: 60,  
                      margin: EdgeInsets.symmetric(horizontal: 10),  
                      decoration: BoxDecoration(
                        color: _isSelected[1] ? myColor2 : Colors.transparent,
                        border: _isSelected[1] ? null : Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'FAQ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Manrope',
                          color: _isSelected[1] ? Colors.white : Colors.black,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _onButtonTap(2),
                    child: Container(
                      width: 120, 
                      height: 60,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: _isSelected[2] ? myColor2 : Colors.transparent,
                        border: _isSelected[2] ? null : Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Educate',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Manrope',
                          color: _isSelected[2] ? Colors.white : Colors.black,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40), 
              Column(
                children: [
                  Image.asset(
                    'Assets/Images/garbage3.jpg',
                    width: 350, 
                    height: 150, 
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20), 
                  Text(
                    'Kibera Cleanup, 16th May 2023',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Manrope',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'Assets/Images/Rectangle.jpg',
                    width: 350,
                    height: 150, 
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20), 
                  Text(
                    'Kisumu Recycling Bins installation',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Manrope',
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    ' 19th May 2023',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Manrope',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'Assets/Images/Rectangle.jpg',
                    width: 350, 
                    height: 150, 
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20), 
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Manrope',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100.0), 
        child: SizedBox(
          width: 70.0, 
          height: 70.0, 
          child: FloatingActionButton(
            onPressed: () {
              
            },
            backgroundColor: myColor2,
            child: SvgPicture.asset(
              'Assets/Icons/cross.svg', 
              width: 35,
              height: 35,
              color: Colors.white, 
            ),
          ),
        ),
      ),
     bottomNavigationBar: ClipRRect(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
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
