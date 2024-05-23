import 'package:flutter/material.dart';
import 'LandingPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
              child: Row(
                children: [
                  Image.asset(
                    'Assets/Images/chemba.png',
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
   bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomAppBar(
          color: myColor2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/HomeIcon.svg',
                    width: 20,
                    height: 20,
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
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/LeafIcon.svg',
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/LogoIcon.svg',
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    
    );
  }
}
