import 'package:chemba/pages/FAQ.dart';
import 'package:chemba/pages/LandingPage.dart';
import 'package:chemba/pages/Profile.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Educate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForecastPage extends StatefulWidget {
  const ForecastPage({super.key});

  @override
  State<ForecastPage> createState() => _ForecastPage();
}

class _ForecastPage extends State<ForecastPage> {
  Color myColor = Color.fromRGBO(210, 217, 209, 1);
  Color myColor2 = Color.fromRGBO(82, 130, 101, 1);
  Color myColor3 = Color.fromRGBO(0, 0, 0, 0.65);
  Color myColor4 = Color.fromRGBO(0, 0, 0, 1);

  List<bool> _isSelected = [false, false, true];

  void _onButtonTap(int index) {
    setState(() {
      for (int i = 0; i < _isSelected.length; i++) {
        _isSelected[i] = i == index;
      }
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Homepage()),
        );
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
              const SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  style: TextStyle(
                    color: myColor4,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: myColor,
                    hintText: 'Type Your Location',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: myColor4,
                      fontSize: 20,
                      fontFamily: 'Manrope',
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        'Assets/Icons/Location.svg', 
                        width: 24,
                        height: 24,
                        color: myColor4, 
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    'Accra',
                    style: TextStyle(
                      fontSize: 38,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w800,
                      color: myColor4,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    '19°C',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: myColor4,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Sunny',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 27,
                      fontWeight: FontWeight.w300,
                      color: myColor4,
                    ),
                  ),
                  const SizedBox(height: 40), 
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Weather Forecast',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: myColor4,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), 
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 1.0),
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: myColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 50,
                            decoration: BoxDecoration(
                              color: myColor2,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: SvgPicture.asset(
                              'Assets/Icons/Cloud.svg', 
                              color: Colors.white,
                              width: 10,
                              height: 10,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Saturday, 6 May',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: myColor4,
                                  ),
                                ),
                                Text(
                                  '19',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 16,
                                    color: myColor4,
                                  ),
                                ),
                                Text(
                                  'Sunny',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 16,
                                    color: myColor4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                   const SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: myColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: myColor2,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: SvgPicture.asset(
                              'Assets/Icons/Cloud.svg',
                              color: Colors.white,
                              width: 24,
                              height: 24,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Saturday, 6 May',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: myColor4,
                                  ),
                                ),
                                Text(
                                  '19',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 16,
                                    color: myColor4,
                                  ),
                                ),
                                Text(
                                  'Sunny',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 16,
                                    color: myColor4,
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
            ],
          ),
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
