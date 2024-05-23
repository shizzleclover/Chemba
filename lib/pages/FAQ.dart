import 'package:chemba/pages/Forecast.dart';
import 'package:chemba/pages/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'HomePage.dart';
import 'Educate.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  Color myColor = Color.fromRGBO(210, 217, 209, 1);
  Color myColor2 = Color.fromRGBO(82, 130, 101, 1);
  Color myColor3 = Color.fromRGBO(0, 0, 0, 0.65);
  Color myColor4 = Color.fromRGBO(0, 0, 0, 1);

  List<bool> _isSelected = [false, true, false];
  bool _isDropdownOpen = false;

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
      
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EducatePage()),
        );
        break;
    }
  }

  void _toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
    });
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
              GestureDetector(
                onTap: _toggleDropdown,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: myColor,
                    borderRadius: BorderRadius.circular(10),
                     
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'What is Chemba and how does it work?',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: myColor4,
                        ),
                      ),
                      SvgPicture.asset(
                        _isDropdownOpen
                            ? 'Assets/Icons/Arrowfold.svg'
                            : 'Assets/Icons/Arrowdown.svg',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              if (_isDropdownOpen)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chemba Overview',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Chemba is an initiative aimed at promoting recycling and waste management in various communities. Our mission is to educate, engage, and empower individuals to take action towards a cleaner and more sustainable environment.',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              GestureDetector(
                onTap: _toggleDropdown,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: myColor,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'What is Chemba and how does it work?',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: myColor4,
                        ),
                      ),
                      SvgPicture.asset(
                        _isDropdownOpen
                            ? 'Assets/Icons/Arrowfold.svg'
                            : 'Assets/Icons/Arrowdown.svg',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              if (_isDropdownOpen)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chemba Overview',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Chemba is an initiative aimed at promoting recycling and waste management in various communities. Our mission is to educate, engage, and empower individuals to take action towards a cleaner and more sustainable environment.',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              GestureDetector(
                onTap: _toggleDropdown,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: myColor,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'What is Chemba and how does it work?',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: myColor4,
                        ),
                      ),
                      SvgPicture.asset(
                        _isDropdownOpen
                            ? 'Assets/Icons/Arrowfold.svg'
                            : 'Assets/Icons/Arrowdown.svg',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              if (_isDropdownOpen)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chemba Overview',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Chemba is an initiative aimed at promoting recycling and waste management in various communities. Our mission is to educate, engage, and empower individuals to take action towards a cleaner and more sustainable environment.',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              GestureDetector(
                onTap: _toggleDropdown,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: myColor,
                    borderRadius: BorderRadius.circular(10),
                  
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'What is Chemba and how does it work?',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: myColor4,
                        ),
                      ),
                      SvgPicture.asset(
                        _isDropdownOpen
                            ? 'Assets/Icons/Arrowfold.svg'
                            : 'Assets/Icons/Arrowdown.svg',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              if (_isDropdownOpen)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chemba Overview',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Chemba is an initiative aimed at promoting recycling and waste management in various communities. Our mission is to educate, engage, and empower individuals to take action towards a cleaner and more sustainable environment.',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              GestureDetector(
                onTap: _toggleDropdown,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: myColor,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'What is Chemba and how does it work?',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: myColor4,
                        ),
                      ),
                      SvgPicture.asset(
                        _isDropdownOpen
                            ? 'Assets/Icons/Arrowfold.svg'
                            : 'Assets/Icons/Arrowdown.svg',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              if (_isDropdownOpen)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chemba Overview',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Chemba is an initiative aimed at promoting recycling and waste management in various communities. Our mission is to educate, engage, and empower individuals to take action towards a cleaner and more sustainable environment.',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              GestureDetector(
                onTap: _toggleDropdown,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: myColor,
                    borderRadius: BorderRadius.circular(10),
                   
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'What is Chemba and how does it work?',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: myColor4,
                        ),
                      ),
                      SvgPicture.asset(
                        _isDropdownOpen
                            ? 'Assets/Icons/Arrowfold.svg'
                            : 'Assets/Icons/Arrowdown.svg',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              if (_isDropdownOpen)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chemba Overview',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Chemba is an initiative aimed at promoting recycling and waste management in various communities. Our mission is to educate, engage, and empower individuals to take action towards a cleaner and more sustainable environment.',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              GestureDetector(
                onTap: _toggleDropdown,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: myColor,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'What is Chemba and how does it work?',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: myColor4,
                        ),
                      ),
                      SvgPicture.asset(
                        _isDropdownOpen
                            ? 'Assets/Icons/Arrowfold.svg'
                            : 'Assets/Icons/Arrowdown.svg',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              if (_isDropdownOpen)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chemba Overview',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Chemba is an initiative aimed at promoting recycling and waste management in various communities. Our mission is to educate, engage, and empower individuals to take action towards a cleaner and more sustainable environment.',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: myColor4,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                
            ],
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
                  onPressed: () {},
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
