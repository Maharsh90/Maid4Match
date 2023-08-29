import 'package:maidfinal/Editprofile.dart';
import 'package:maidfinal/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:maidfinal/main.dart';
import 'package:flutter/material.dart';




// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false, // set to false to remove banner
//     home: MyHome(),
//   ));
// }

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // Icon cusIcon=Icon(Icon.search);

  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.htslt9CyxcRwuMLbi1JxNgHaHa?w=199&h=199&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                  ),
                  accountName: Text("\n Yash Dabhi"),
                  accountEmail: Text("Yash@gmail.com"),
                )),

            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                minimumSize: MaterialStateProperty.all(Size(100, 50)),
                fixedSize: MaterialStateProperty.all(Size(100, 50)),
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade200),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.person_add,
                    color: Colors.teal.shade900,
                  ),
                  SizedBox(width: 4),
                  Text('SignUp'),
                ],
              ),
            ),
            SizedBox(height: 17),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                minimumSize: MaterialStateProperty.all(Size(100, 50)),
                fixedSize: MaterialStateProperty.all(Size(100, 50)),
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade200),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: Colors.teal.shade900,
                  ),
                  SizedBox(width: 4),
                  Text('Home'),
                ],
              ),
            ),
            SizedBox(height: 17),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>MyEditProfile()));
              },
              style: ButtonStyle(alignment: Alignment.center,
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                minimumSize: MaterialStateProperty.all(Size(100, 50)),
                fixedSize: MaterialStateProperty.all(Size(100, 50)),
                overlayColor: MaterialStateProperty.all<Color>(Colors.grey.shade200),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [ Icon(
                  Icons.edit,
                  color: Colors.teal.shade900,
                ),
                  SizedBox(width: 4),
                  Text('Edit Profile'),

                ],

              ),



            ),

            SizedBox(height: 17),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                minimumSize: MaterialStateProperty.all(Size(100, 50)),
                fixedSize: MaterialStateProperty.all(Size(100, 50)),
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade200),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.teal.shade900,
                  ),
                  SizedBox(width: 4),
                  Text('Logout'),
                  Container(
                    child: Column(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),


      appBar: AppBar(
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfile()));
              },
              iconSize: .5,
              icon:
                  // Icon(Icons.login),
                  Image(
                image: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/3177/3177440.png",
                ),
              )),
        ],
        backgroundColor: Colors.blue,
        title: Text('Maid4House'),
      ),

    );
  }
}
