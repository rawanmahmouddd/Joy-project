
import 'package:flutter/material.dart';
import 'package:untitled/agile_project/joyplan_screen.dart';

class DestinationScreen extends StatefulWidget {
  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> countries = [
    "United States",
    "Egypt",
    "United Kingdom",
    "Kuwait",
    "France",
    "Italy",
    "Spain",
    "Australia",
    "Japan",
    "China",
    "Brazil",
    "Mexico",
    "Argentina",
    "India",
    "Russia",
    "Canada",
    "Saudi Arabia",
    "Turkey",
    "Germany",
  ];
  String selectedCountry = '';
  DateTime? fromDate;
  DateTime? toDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25, right: 16, left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      decoration: const InputDecoration(
                        hintText: 'Enter Your destination',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    itemBuilder: (BuildContext context) {
                      return countries.map((String country) {
                        return PopupMenuItem<String>(
                          value: country,
                          child: Text(country),
                        );
                      }).toList();
                    },
                    onSelected: (String value) {
                      setState(() {
                        selectedCountry = value;
                        _textEditingController.text = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(11),
              padding: EdgeInsets.only(top: 20),
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                children: [
                  Text(
                    'DATE',
                    style: TextStyle(fontSize: 30, color: Color(0xFFC6A4C7),fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "From",
                            style: TextStyle(fontSize: 20, color:Color(0xFFC6A4C7),fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height:15),
                          MaterialButton(
                            onPressed: () => openDatePicker(true),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                fromDate != null
                                    ? "${fromDate!.day}/${fromDate!.month}/${fromDate!.year}"
                                    : "Select date",
                                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                              ),
                            ),
                            color: Color(0xFFC6A4C7),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "To",
                            style: TextStyle(fontSize: 20, color:Color(0xFFC6A4C7),fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15),
                          MaterialButton(
                            onPressed: () => openDatePicker(false),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                toDate != null
                                    ? "${toDate!.day}/${toDate!.month}/${toDate!.year}"
                                    : "Select date",
                                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                              ),
                            ),
                            color: Color(0xFFC6A4C7),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height:5),
          // Container(
          //   width: MediaQuery.of(context).size.width * 0.9, // Set the desired percentage
          //   child: Divider(
          //     color: Colors.grey,
          //     thickness: 1.0,
          //   ),
          // ),
         Container(
           margin: EdgeInsets.all(11),
           padding: EdgeInsets.only(top: 20),
           height: 320,
           width: 400,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             border: Border.all(color: Colors.grey),
           ),
           child: Column(
             children: [
               Text(
                 'Requirments',
                 style: TextStyle(fontSize: 30, color: Color(0xFFC6A4C7),fontWeight: FontWeight.w300),
               ),
               SizedBox(height: 26),
               Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     ElevatedButton(
                       onPressed: () {},
                       style: ElevatedButton.styleFrom(
                         primary:Color((0xFFC6A4C7) ),// Button color
                         onPrimary: Colors.black, // Text color
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10), // Adjust the value for rounded corners
                         ),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Text(
                           'Historical Site',
                           style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                         ),
                       ),
                     ),
                     SizedBox(width: 10),
                     ElevatedButton(
                       onPressed: () {},
                       style: ElevatedButton.styleFrom(
                         primary:Color(0xFFF0E7F0) ,// Button color
                         onPrimary: Colors.black, // Text color
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10), // Adjust the value for rounded corners
                         ),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Text(
                           'Cultural Centers',
                           style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                         ),
                       ),
                     ),
             ],
           ),
               SizedBox(height: 25),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   ElevatedButton(
                     onPressed: () {},
                     style: ElevatedButton.styleFrom(
                       primary:Color((0xFFF0E7F0)),// Button color
                       onPrimary: Colors.black, // Text color
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10), // Adjust the value for rounded corners
                       ),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Text(
                         'Natural Wonder',
                         style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                       ),
                     ),
                   ),
                   SizedBox(width: 10),
                   ElevatedButton(
                     onPressed: () {},
                     style: ElevatedButton.styleFrom(
                       primary:Color(0xFFC6A4C7),// Button color
                       onPrimary: Colors.black, // Text color
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10), // Adjust the value for rounded corners
                       ),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Text(
                         'Religious Sites',
                         style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                       ),
                     ),
                   ),
                 ],
               ),
               SizedBox(height: 25),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   ElevatedButton(
                     onPressed: () {},
                     style: ElevatedButton.styleFrom(
                       primary:Color(0xFFF0E7F0),// Button color
                       onPrimary: Colors.black, // Text color
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10), // Adjust the value for rounded corners
                       ),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Text(
                         'Coastal Cities  ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                       ),
                     ),
                   ),
                   SizedBox(width: 10),
                   ElevatedButton(
                     onPressed: () {},
                     style: ElevatedButton.styleFrom(
                       primary:Color(0xFFF0E7F0),// Button color
                       onPrimary: Colors.black, // Text color
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10), // Adjust the value for rounded corners
                       ),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Text(
                         '   Adventure   ',
                         style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                       ),
                     ),
                   ),
                 ],
               ),
          ],
        ),
      ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PlanScreen(),),);
              },
              style: ElevatedButton.styleFrom(
                primary:Color(0xFFC6A4C7),// Button color
                onPrimary: Colors.black, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Adjust the value for rounded corners
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'DONE',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
      ]
    ),
    )
    );
  }

  void openDatePicker(bool isFromDate) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );

    if (selectedDate != null) {
      setState(() {
        if (isFromDate) {
          fromDate = selectedDate;
        } else {
          toDate = selectedDate;
        }
      });
    }
  }
}