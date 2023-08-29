import 'package:flutter/material.dart';
import 'package:maidfinal/Editprofile.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyEditProfile(),));

}

class MyEditProfile extends StatelessWidget {
  const MyEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Profile"),


      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                child:Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 200,
                        child:  Image(image: NetworkImage("https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg"),
                        height: 500,width: 900,fit: BoxFit.fitHeight,),

                      ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Full Name",icon: Icon(Icons.person_outline_rounded)
                            ),
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Last Name",icon: Icon(Icons.person_outline_rounded)
                            ),
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Email",icon: Icon(Icons.email_rounded)
                            ),
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Phone Number",icon: Icon(Icons.numbers)
                            ),
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Address",icon: Icon(Icons.home_filled),
                            ),
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          child: Text("Edit Profile"),
                          onPressed: (){},style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        ),
                        )
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      )

    );

  }
}
