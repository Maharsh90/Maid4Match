import 'package:flutter/material.dart';
import 'package:maidfinal/profile.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 4),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            // child: Image.network('https://images.pexels.com/photos/355164/pexels-photo-355164.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                            child: Image.network('https://images.pexels.com/photos/355179/pexels-photo-355179.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kantabai", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Cleaner", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Center(child: MaterialButton(
                        elevation: 0,
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyProfile(),
                            ),
                          );
                        },
                        height: 55,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            'View Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 4),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            // child: Image.network('https://images.pexels.com/photos/355164/pexels-photo-355164.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                            child: Image.network('https://images.pexels.com/photos/355179/pexels-photo-355179.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kantabai", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Cleaner", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Center(child: MaterialButton(
                        elevation: 0,
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyProfile(),
                            ),
                          );
                        },
                        height: 55,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            'View Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 4),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            // child: Image.network('https://images.pexels.com/photos/355164/pexels-photo-355164.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                            child: Image.network('https://images.pexels.com/photos/355179/pexels-photo-355179.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kantabai", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Cleaner", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Center(child: MaterialButton(
                        elevation: 0,
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyProfile(),
                            ),
                          );
                        },
                        height: 55,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            'View Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 4),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            // child: Image.network('https://images.pexels.com/photos/355164/pexels-photo-355164.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                            child: Image.network('https://images.pexels.com/photos/355179/pexels-photo-355179.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kantabai", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Cleaner", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Center(child: MaterialButton(
                        elevation: 0,
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyProfile(),
                            ),
                          );
                        },
                        height: 55,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            'View Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 4),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            // child: Image.network('https://images.pexels.com/photos/355164/pexels-photo-355164.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                            child: Image.network('https://images.pexels.com/photos/355179/pexels-photo-355179.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kantabai", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Cleaner", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Center(child: MaterialButton(
                        elevation: 0,
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyProfile(),
                            ),
                          );
                        },
                        height: 55,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            'View Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 4),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            // child: Image.network('https://images.pexels.com/photos/355164/pexels-photo-355164.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                            child: Image.network('https://images.pexels.com/photos/355179/pexels-photo-355179.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kantabai", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Cleaner", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Center(child: MaterialButton(
                        elevation: 0,
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyProfile(),
                            ),
                          );
                        },
                        height: 55,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            'View Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
