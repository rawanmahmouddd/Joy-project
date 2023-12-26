
import 'package:flutter/material.dart';
import 'package:untitled/agile_project/Joydestination_screen.dart';
class JoyHomeScreen extends StatefulWidget {
  @override
  _JoyHomeScreenState createState() => _JoyHomeScreenState();
}

class _JoyHomeScreenState extends State<JoyHomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 55,
                height: 56,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/p.jpeg'),
                ),
              ),
              const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' Hello ',
                    style: TextStyle(
                      color: Color(0xFFB0B0B0),
                      fontSize: 20,
                      fontFamily: 'Inika',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    ' Sara Doe!  ',
                    style: TextStyle(
                      color: Color(0xFFC6A4C7),
                      fontSize: 25,
                      fontFamily: 'Inika',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Image.asset(
                "assets/images/plan.jpeg",
                width: 50,
                height: 50,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '   Where to, Adventurer?',
                style: TextStyle(
                  color: Color(0xFF3EA2C2),
                  fontSize: 26,
                  fontFamily: 'Inika',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 90),
              Text(
                'Personalized Plans?',
                style: TextStyle(
                  color: Color(0xFFC6A4C7),
                  fontSize: 25,
                  fontFamily: 'Inika',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigate to the second page when the image is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DestinationScreen()), // Replace 'SecondPage' with the actual name of your second page class
                  );
                },
                child: Container(
                  width: 348,
                  height: 208,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/girel.jpeg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' Discover Destinations?',
                style: TextStyle(
                  color: Color(0xFFC6A4C7),
                  fontSize: 25,
                  fontFamily: 'Inika',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 348,
                height: 208,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/safer.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFC6A4C7),
        backgroundColor: Colors.grey[300],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded), label: "Fav"),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
