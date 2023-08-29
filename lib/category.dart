import 'package:flutter/material.dart';
import 'package:maidfinal/so.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _EmailFormKey = GlobalKey<FormState>();
  final _passwordFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Maid4house"),),
      body: Stack(
        children:[
          // Image.asset('assets/back.jpg',width: 500,height: 300,),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.lightBlueAccent,
                  Colors.lightBlue,
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 300,
              height: 250,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Choose Your Category?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 35),
                      ElevatedButton(
                        onPressed: () {
                          //navigation code
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register_class()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue.shade900),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          minimumSize: MaterialStateProperty.all(Size(170, 40)),
                          fixedSize: MaterialStateProperty.all(Size(100, 40)),
                          overlayColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue.shade700),
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
                              Icons.account_circle_sharp,
                              // color: Colors.lightBlue.shade900,
                              color:Colors.white,
                            ),
                            SizedBox(width: 4),
                            Text('Service Provider'),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          //navigation code
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register_class()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue.shade900),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          minimumSize: MaterialStateProperty.all(Size(100, 40)),
                          fixedSize: MaterialStateProperty.all(Size(100, 40)),
                          overlayColor:
                          MaterialStateProperty.all<Color>(Colors.lightBlue.shade700),
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
                              Icons.account_circle_sharp,
                              // color: Colors.lightBlue.shade900,
                              color:Colors.white,
                            ),
                            SizedBox(width: 4),
                            Text('User'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}