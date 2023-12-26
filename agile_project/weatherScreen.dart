import 'package:flutter/material.dart';

class SnowScreen extends StatefulWidget {
  @override
  _SnowScreenState createState() => _SnowScreenState();
}

class _SnowScreenState extends State<SnowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                GestureDetector(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image(image: AssetImage('assets/images/snow.jpg')),
                      Text(
                        'Snowy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 64,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Add some spacing
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Your existing content here...
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle onTap event
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: 170,
                                  height: 213,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/canda.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 100,
                                  left: 10,
                                  child: Text(
                                    'Canada',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xEEB0B3C5),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle onTap event
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: 170,
                                  height: 213,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/Norway.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 50,
                                  left: 10,
                                  child: Text(
                                    'Norway',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xEEB0B3C5),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle onTap event
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: 170,
                                  height: 213,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/Finland.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 30,
                                  left: 13,
                                  child: Text(
                                    'Finland',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xEEB0B3C5),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle onTap event
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Stack(
                              children: [
                                Container(
                                  width: 186,
                                  height: 213,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/New.jpg'),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 30,
                                  left: 10,
                                  child: Text(
                                    'New Zealand',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xEEB0B3C5),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle onTap event
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: 168,
                                  height: 217,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/Austria.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 30,
                                  left: 13,
                                  child: Text(
                                    'Austria',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xEEB0B3C5),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle onTap event
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: 180,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/Sweden.jpg'),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 100,
                                  left: 10,
                                  child: Text(
                                    'Sweden',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xEEB0B3C5),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                    ),
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
            ),
          ),
        ],
      ),
    );
  }
}
