import 'package:flutter/material.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
         children: [
           const Text("   YOUR PLAN..",style:TextStyle(fontSize: 40,fontWeight: FontWeight.w500),),
           const SizedBox(height: 40),
           Container(
           child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("  DAY 1",style:TextStyle(fontSize:40,fontWeight: FontWeight.w200),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image(image:AssetImage("assets/images/musem.jpg"),
                        height: 100, width: 100,
                        ),
                        Text("Egyptian museum\n starts at 9 am")
                      ],
                    ),
                    Column(
                      children: [
                        Image(image:AssetImage("assets/images/alazhar.jpg"),
                          height: 100, width: 100,),
                        Text("Alazhar mosque\n starts at 1 pm")
                      ],
                    )
                  ],
                ),
                 SizedBox(height: 5),
                Text("  DAY 2",style:TextStyle(fontSize:40,fontWeight: FontWeight.w200),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image(image:AssetImage("assets/images/pyr.jpg"),height: 100, width: 100,),
                        Text("Pyramids of giza\n starts at 7 am")
                      ],
                    ),
                    Column(
                      children: [
                        Image(image:AssetImage("assets/images/new muss.jpg"),height: 100, width: 100,),
                        Text("New museum\n starts at 6 pm")
                      ],
                    )
                  ],
                ),
                 SizedBox(height: 5),
                Text("  DAY 3",style:TextStyle(fontSize:40,fontWeight: FontWeight.w200),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image(image:AssetImage("assets/images/openmus.jpg"),height: 100, width: 100,),
                        Text("Open-air museum\n starts at 1 pm")
                      ],
                    ),
                    Column(
                      children: [
                        Image(image:AssetImage("assets/images/valley.jpg"),height: 100, width: 100,),
                        Text("Valley of the Kings\n starts at 7 pm")
                      ],
                    )
                  ],
                ),
               ]
           )
           )
         ],
        ),
      ),
    );
  }
}
