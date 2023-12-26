import 'package:flutter/material.dart';
import 'package:untitled/agile_project/joysignup_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image(
                  image: AssetImage('assets/images/started.jpg'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  bottom: 30,
                  left: 230,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterSccreen(),),);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0x3FAECE9A),
                      padding: EdgeInsets.all(16),
                      primary: Color(0xFFF3E8EC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.6,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 600,
                  right: 20,

                  child: Container(
                    // Adjusted the container for better flexibility
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'Your Wanderlust Ally: JOY plans,',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0.6,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          ' you experience the joy of travel.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0.6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
