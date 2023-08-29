
import 'package:flutter/material.dart';
import 'package:maidfinal/grid.dart';


class clean1 extends StatefulWidget {
  const clean1({Key? key}) : super(key: key);

  @override
  State<clean1> createState() => _clean1State();
}

class _clean1State extends State<clean1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Made4house"),),
      body:Column(
        children: [
          SizedBox(height: 180,
          child: Material(
            color: Colors.grey[200],
            child: InkWell(
              onTap: (){},
              child: SizedBox(
                 // set background color of card

                  child: Row(
                    children: [
                      SizedBox(width: 200,child: Expanded(flex: 1,child: Image(fit: BoxFit.fill, image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6bCeVjyjvxT4WPVs394Zz2TqOTArREgTXPlFedwKATA&s"),))),

                      // add some space between icon and te
                      SizedBox(height: 60,
                        child: Column(
                          children:[Text(
                          'XYZ services',
                          style: TextStyle(color: Colors.black, fontSize: 10

                          ),
                        ),

                // SizedBox(height: 10,),// add text to row
                ElevatedButton(onPressed: (){}, child:Text("Enquiry Now")),],
                        ),
                      )]
                ),
              ),
            ),

          ),
        ),
          SizedBox(height: 180,
            child: Material(
              color: Colors.grey[200],
              child: InkWell(
                onTap: (){},
                child: SizedBox(
                  // set background color of card

                  child: Row(
                      children: [
                        SizedBox(width: 200,child: Expanded(flex: 1,child: Image(fit: BoxFit.fill, image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6bCeVjyjvxT4WPVs394Zz2TqOTArREgTXPlFedwKATA&s"),))),

                        // add some space between icon and te
                        SizedBox(height: 60,
                          child: Column(
                            children:[Text(
                              'XYZ services',
                              style: TextStyle(color: Colors.black, fontSize: 10

                              ),
                            ),

                              // SizedBox(height: 10,),// add text to row
                              ElevatedButton(onPressed: (){}, child:Text("Enquiry Now")),],
                          ),
                        )]
                  ),
                ),
              ),

            ),
          ),
          SizedBox(height: 180,
            child: Material(
              color: Colors.grey[200],
              child: InkWell(
                onTap: (){},
                child: SizedBox(
                  // set background color of card

                  child: Row(
                      children: [
                        SizedBox(width: 200,child: Expanded(flex: 1,child: Image(fit: BoxFit.fill, image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6bCeVjyjvxT4WPVs394Zz2TqOTArREgTXPlFedwKATA&s"),))),

                        // add some space between icon and te
                        SizedBox(height: 60,
                          child: Column(
                            children:[Text(
                              'XYZ services',
                              style: TextStyle(color: Colors.black, fontSize: 10

                              ),
                            ),

                              // SizedBox(height: 10,),// add text to row
                              ElevatedButton(onPressed: (){}, child:Text("Enquiry Now")),],
                          ),
                        )]
                  ),
                ),
              ),

            ),
          ),
      ]
      ),
        );


  }
}