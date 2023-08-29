import 'package:maidfinal/Editprofile.dart';
import 'package:flutter/material.dart';
import 'package:maidfinal/profile.dart';
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyProfile(),));
//
// }
class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile",),backgroundColor: Colors.blue,),
      body: ListView(
        children: [
          Container(padding: EdgeInsets.all(15),
            color: Colors.blue,
            height: MediaQuery.of(context).size.height*.30,
            width: double.infinity,
            child: Column(
              children: [Stack(children: [CircleAvatar(radius: 60,backgroundImage: AssetImage("assets/babu.png"),), Positioned(bottom: 5,right: 5,
                  child: CircleAvatar(radius: 20,child: IconButton(onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyEditProfile()),);
                  }, icon: Icon(Icons.edit)),
                    backgroundColor: Colors.white,)),],
              ),


                SizedBox(height: 10,),
                Text("Yash",style: TextStyle(fontSize: 20),),
                Text("Gujarat,Mhd",style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Column(
              children: [
                Text("User Information",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Divider(),
                ListTile(
                  title:Text("Location",style: TextStyle(fontSize: 20),),
                  subtitle: Text("Gujarat,ahd"),
                  leading: Icon(Icons.location_on),
                ),
                SizedBox(height: 5),
                ListTile(
                  title:Text("Email",style: TextStyle(fontSize: 20),),
                  subtitle: Text("abc@g.com"),
                  leading: Icon(Icons.email_rounded),
                ),
                SizedBox(height: 5),
                ListTile(
                  title:Text("Phone",style: TextStyle(fontSize: 20),),
                  subtitle: Text("123456789"),
                  leading: Icon(Icons.phone_android),
                ),
                SizedBox(height: 5),
                ListTile(
                  title:Text("About",style: TextStyle(fontSize: 20),),
                  subtitle: Text("abc"),
                  leading: Icon(Icons.info_outline_rounded),
                ),

              ],
            ),
          )


        ],
      ),

    );
  }
}
