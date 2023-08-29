import 'package:maidfinal/grid.dart';
import 'package:flutter/material.dart';

class Clean extends StatefulWidget {
  const Clean({Key? key}) : super(key: key);

  @override
  State<Clean> createState() => _CleanState();
}

class _CleanState extends State<Clean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Maid4house"),),
      body: Container(
        // margin: EdgeInsets.only(top: 70),
        margin: EdgeInsets.only(top: 10,left: 10,right: 10),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Where do you want cleaned?',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
        SizedBox(height: 30,),
        Card(
          color: Colors.grey.shade200, // set background color of card
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  'assets/bed.png',
                  height: 45,
                  width: 45,
                ), // add icon to row
                SizedBox(width: 16.0), // add some space between icon and text
                Text(
                  'Living Room',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ), // add text to row
              ],
            ),
          ),
        ),
            SizedBox(height: 30,),

            // SizedBox(height: 30,),
            Card(
              color: Colors.grey.shade200, // set background color of card
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/bed.png',
                      height: 45,
                      width: 45,
                    ), // add icon to row
                    SizedBox(width: 16.0), // add some space between icon and text
                    Text(
                      'Bedroom',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ), // add text to row
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Card(
              color: Colors.grey.shade200, // set background color of card
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/bed.png',
                      height: 45,
                      width: 45,
                    ), // add icon to row
                    SizedBox(width: 16.0), // add some space between icon and text
                    Text(
                      'Bathroom',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ), // add text to row
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Card(
              color: Colors.grey.shade200, // set background color of card
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/bed.png',
                      height: 45,
                      width: 45,
                    ), // add icon to row
                    SizedBox(width: 16.0), // add some space between icon and text
                    Text(
                      'Terrace',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ), // add text to row
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



