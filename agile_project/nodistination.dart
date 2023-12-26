import 'package:flutter/material.dart';
import 'package:untitled/agile_project/weatherScreen.dart';
class DiscoverDestinations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyPage();
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 45,
                width: 360,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                  ),
                  child:TextField(
                    decoration: const InputDecoration(
                      hintText: 'Ready to Discovery',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      handleOptionSelection('Option 2');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0x9EBC9DBC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                    child: Text(
                      '#Continent',
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        fontFamily: 'Jomolhari',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                        letterSpacing: -0.07,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SnowScreen(),)
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0x9EBC9DBC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                    child: Text(
                      '#Weather',
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        fontFamily: 'Jomolhari',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                        letterSpacing: -0.07,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0x9EBC9DBC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                    child: Text(
                      '# Budget',
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        fontFamily: 'Jomolhari',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                        letterSpacing: -0.07,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 1,
            color: Color(0xFFC6A4C7),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Most Viewed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                    height: 0.05,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                String imageAsset;
                String destinationName;
                String viewCount;

                if (index % 5 == 0) {
                  imageAsset = "assets/images/newyork.jpg";
                  destinationName = "New York";
                  viewCount = "50,324 views";
                } else if (index % 5 == 1) {
                  imageAsset = "assets/images/maldives.jpg";
                  destinationName = "Maldives";
                  viewCount = "30,543 views";
                } else if (index % 5 == 2) {
                  imageAsset = "assets/images/italy.jpg";
                  destinationName = "Rome, Italy";
                  viewCount = "19,543 views";
                } else if (index % 5 == 3) {
                  imageAsset = "assets/images/cairo.jpg";
                  destinationName = "Cairo";
                  viewCount = "22,324 views";
                } else {
                  imageAsset = "assets/images/miami.jpg";
                  destinationName = "Miami";
                  viewCount = "10,544 views";
                }

                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Stack(
                      children: [
                        Image.asset(
                          imageAsset,
                          width: 171,
                          height: 157,
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                destinationName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                viewCount,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Roboto Slab',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0xFFC6A4C7),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Recommended For You',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                    height: 0.05,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context, index) {
                String imageAsset;
                String destinationName;
                String viewCount;

                if (index % 4 == 0) {
                  imageAsset = "assets/images/Tokyo.jpg";
                  destinationName = "Tokyo";
                  viewCount = "5 views";
                } else if (index % 4 == 2) {
                  imageAsset = "assets/images/South Korea.jpg";
                  destinationName = "South Korea";
                  viewCount = "4 views";
                } else if (index % 4 == 3) {
                  imageAsset = "assets/images/Teriyaki.jpg";
                  destinationName = "Teriyaki";
                  viewCount = "3 views";
                } else {
                  imageAsset = "assets/images/Canada.jpg";
                  destinationName = "Canada";
                  viewCount = "10 views";
                }

                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset(
                                imageAsset,
                                width: 200,
                                height: 174,
                              ),
                            ),
                            Positioned(
                              left: 60,
                              bottom: 40,
                              child: Text(
                                destinationName,
                                style: TextStyle(
                                  color: Colors.white,
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
                      SizedBox(width: 2), // Add some space between the pictures
                      Expanded(
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image.asset(
                                imageAsset, // Use the same imageAsset for simplicity
                                width: 200,
                                height: 174,
                              ),
                            ),
                            Positioned(
                              left: 60,
                              bottom: 40,
                              child: Text(
                                destinationName,
                                style: TextStyle(
                                  color: Colors.white,
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
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void handleOptionSelection(String option) {
    setState(() {
      selectedOption = option;
    });
  }
}

void main() {
  runApp(MaterialApp(
    home: DiscoverDestinations(),
  ));
}
