import 'package:maidfinal/clean1.dart';
import 'package:maidfinal/cleaning.dart';
import 'package:maidfinal/lo.dart';
import 'package:maidfinal/newhome.dart';
import 'package:flutter/material.dart';
// import 'package:login_signup/home.dart';
import 'package:maidfinal/grid.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:maidfinal/profile.dart';
import 'package:maidfinal/Editprofile.dart';

// void main() {
//   runApp(GamApp());
//
// }

class GamApp extends StatefulWidget {
  @override
  State<GamApp> createState() => _GamAppState();
}

class _GamAppState extends State<GamApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Grid Example',
      home: Scaffold(
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(margin: EdgeInsets.all(8),
                    currentAccountPicture: CircleAvatar(radius: 50,
                      backgroundImage: AssetImage(
                          "assets/babu.png"),
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
                      Icons.settings,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(width: 4),
                    Text('Setting'),
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
                      Icons.info,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(width: 4),
                    Text('About Us'),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyLogin()),
                  );
                },
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
        body:

        SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
                  width: MediaQuery.of(context).size.width/1,
                  child: Text(
                    'Which Service do you need?',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width/1,
                  // margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          // do something when the container is tapped
                          Navigator.push(context,MaterialPageRoute(
                              builder:(context) => HomePage()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.lightBlue.shade200, Colors.grey.shade300],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Icon(Icons.cleaning_services,size: 50,color: Colors.lightBlue.shade900,),
                              Image.asset(
                                'assets/house-cleaning.png',
                                height: 50,
                                width: 70,
                              ),
                              Text(
                                'Cleaning',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // do something when the container is tapped
                          Navigator.push(context,MaterialPageRoute(
                              builder:(context) =>HomePage()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            // color: Colors.teal[200],
                            gradient: LinearGradient(
                              colors: [Colors.grey.shade300,Colors.lightBlue.shade200],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/cook_girl.png',
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                'Cooking',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // do something when the container is tapped
                          Navigator.push(context,MaterialPageRoute(
                              builder:(context) =>HomePage()),
                          );

                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.lightBlue.shade200, Colors.grey.shade300],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              // Icon(Icons.local_laundry_service,size: 50,),
                              SizedBox(height: 40),
                              Image.asset(
                                'assets/laundry-basket.png',
                                height: 45,
                                width: 45,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Laundry',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // do something when the container is tapped
                          Navigator.push(context,MaterialPageRoute(
                              builder:(context) =>HomePage()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.grey.shade300,Colors.lightBlue.shade200],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              // Icon(Icons.child_care,size: 50,),
                              SizedBox(height: 40),
                              Image.asset(
                                'assets/baby.png',
                                height: 45,
                                width: 45,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Baby sitting',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // do something when the container is tapped
                          Navigator.push(context,MaterialPageRoute(
                              builder:(context) =>HomePage()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.grey.shade300,Colors.lightBlue.shade200],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              // Icon(Icons.grass,size: 50,),
                              SizedBox(height: 40),
                              Image.asset(
                                'assets/servant.png',
                                height: 45,
                                width: 45,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Gardening',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // do something when the container is tapped
                          Navigator.push(context,MaterialPageRoute(
                              builder:(context) =>HomePage()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.grey.shade300,Colors.lightBlue.shade200],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              // Icon(Icons.grass,size: 50,),
                              SizedBox(height: 30),
                              Image.asset(
                                'assets/tiffin.png',
                                height: 55,
                                width: 55,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Tiffin',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
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
    );
  }
}
