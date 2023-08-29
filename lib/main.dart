
import 'dart:ui';

import 'package:maidfinal/lo.dart';
import 'package:maidfinal/profile.dart';
import 'package:maidfinal/starterPage.dart';
import 'package:flutter/material.dart';
import 'package:maidfinal/home.dart';
import 'package:maidfinal/so.dart';
import 'package:maidfinal/Editprofile.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'dart:js';

TextEditingController password = TextEditingController();
// var password='';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StartPage(),
  ));
}

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _firstNameFormKey = GlobalKey<FormState>();
  final _lastNameFormKey = GlobalKey<FormState>();
  final _ContactFormKey = GlobalKey<FormState>();
  final _AddressFormKey = GlobalKey<FormState>();
  final _EmailFormKey = GlobalKey<FormState>();
  final _passwordFormKey = GlobalKey<FormState>();
  final _RetypePasswordFormKey = GlobalKey<FormState>();

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController Contact = TextEditingController();
  TextEditingController Address = TextEditingController();
  TextEditingController Email = TextEditingController();


  insertrecord() async
  {
    // ServiceConsumer userModel = ServiceConsumer(
    //   1,
    //   firstName.text,
    //   lastName.text,
    //   Address.text,
    //   Contact.text,
    //   Email.text,
    //   password.text,

    // );

    var link= "http://192.168.1.57/flutter_api/service_consumer.php";



    var res = await http.post(
      Uri.parse(link),
      body: {
        "sc_fname":firstName.text,
        "sc_lname":lastName.text,
        "sc_address":Address.text,
        "sc_contactNo":Contact.text,
        "sc_email":Email.text,
        "sc_password":password.text,
      },
    );

    if(res.statusCode == 200)
    {
      Fluttertoast.showToast(msg: "singup successfully",  toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    else
    {
      Fluttertoast.showToast(msg: "Error Occurred, Try Again");
    }



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              width: 320,
              height: 650,
              child: SingleChildScrollView(
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
                              SizedBox(height: 15),
                              Icon(
                                Icons.account_circle_sharp,
                                color: Colors.lightBlue.shade900,
                                // color:Colors.white,
                              ),
                              Text(
                                'SignUp',
                                style: TextStyle(
                                  color: Colors.lightBlue.shade900,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Form(
                          key: _firstNameFormKey,
                          child: TextFormField(
                            controller: firstName,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            // focusNode: myFocusNode,
                            decoration: InputDecoration(
                              labelText: " First Name",
                              // labelStyle: TextStyle(color: myFocusNode.hasFocus?Colors.blue:Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Colors.grey.shade50,
                              filled: true,
                            ),
                            validator: (value) {
                              if (value==null || value.isEmpty) {
                                return 'Please enter your first name';
                              }
                              if(value.length<3){
                                return 'Name must be atleast 3 character long';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Form(
                          key: _lastNameFormKey,
                          child: TextFormField(
                            controller: lastName,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              labelText: " Last Name",
                              // labelStyle: TextStyle(color: myFocusNode.hasFocus?Colors.blue:Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Colors.grey.shade50,
                              filled: true,
                            ),
                            validator: (value) {
                              if (value==null || value.isEmpty) {
                                return 'Please enter your first name';
                              }
                              if(value.length<4){
                                return 'LastName must be atleast 4 character long';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        Form(
                          key: _AddressFormKey,
                          child: TextFormField(
                            controller: Address,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              labelText: "Address",
                              // labelStyle: TextStyle(color: myFocusNode.hasFocus?Colors.blue:Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Colors.grey.shade50,
                              filled: true,
                            ),
                            validator: (value) {
                              if (value==null || value.isEmpty) {
                                return 'Please enter your first name';
                              }
                              if(value.length<5){
                                return 'Address must be atleast 5 character long';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        Form(
                          key: _ContactFormKey,
                          child: TextFormField(
                            controller: Contact,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              labelText: "Contact no",
                              // labelStyle: TextStyle(color: myFocusNode.hasFocus?Colors.blue:Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fillColor: Colors.grey.shade50,
                              filled: true,
                            ),
                            validator: (value) {
                              String pattern = r'^\+?91[6789]\d{9}$';
                              RegExp regex = RegExp(pattern);
                              if (value==null || value.isEmpty) {
                                return 'Please enter your first name';
                              }
                              if (!regex.hasMatch(value)) {
                                return 'Please enter a valid Indian phone number';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        Form(
                          key: _EmailFormKey,
                          child: TextFormField(
                              controller: Email,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                fillColor: Colors.grey.shade50,
                                filled: true,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter your Email';
                                }
                                if (!RegExp(r'\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b',
                                    caseSensitive: false).hasMatch(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              }
                          ),
                        ),
                        SizedBox(height: 15),
                        PasswordFormField(
                          passwordFormKey: _passwordFormKey, // Pass the key to the PasswordFormField
                        ),
                        SizedBox(height: 15),
                        // RetypePasswordFormField(
                        //   RetypePasswordFormKey: _RetypePasswordFormKey, // Pass the key to the PasswordFormField
                        // ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            if (_firstNameFormKey.currentState!.validate() && _lastNameFormKey.currentState!.validate() && _AddressFormKey.currentState!.validate() && _ContactFormKey.currentState!.validate() && _EmailFormKey.currentState!.validate() && _passwordFormKey.currentState!.validate()) {
                              print("dvdf");
                              insertrecord();

                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue.shade900),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            minimumSize: MaterialStateProperty.all(Size(110, 40)),
                            fixedSize: MaterialStateProperty.all(Size(110, 40)),
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
                              Text('SignUp'),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Center(child:TextButton(
                          child:Text(
                            "SignIn",
                            style: TextStyle(
                              // color: Colors.lightBlue.shade900,
                              color: Colors.blueAccent.shade400,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => MyLogin()),
                            // );
                          },
                        ),
                        ),
                      ],
                    ),
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

class PasswordFormField extends StatefulWidget {
  final GlobalKey<FormState> passwordFormKey; // Declare the key here
  PasswordFormField({Key? key, required this.passwordFormKey}) : super(key: key);


  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _passwordVisible = false;
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Form(
        key: widget.passwordFormKey, // Use the key here
        child: TextFormField(
          controller: password,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: !_passwordVisible,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            fillColor: Colors.grey.shade50,
            filled: true,
            suffixIcon: IconButton(
              icon: Icon(
                _passwordVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: Theme.of(context).primaryColorDark,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
          ),
          validator: (value) {
            String patt =
                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
            RegExp regex = RegExp(patt);
            if (value == null || value.isEmpty) {
              return 'Please enter a password';
            }
            if (!regex.hasMatch(value)) {
              return 'Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number and one special character (!@#\$&*~)';
            }
            password=password;
            return null;
          },
        ),
      ),
    );
  }
}

// class RetypePasswordFormField extends StatefulWidget {
//   final GlobalKey<FormState> RetypePasswordFormKey; // Declare the key here
//   RetypePasswordFormField({Key? key, required this.RetypePasswordFormKey}) : super(key: key);
//   @override
//   _RetypePasswordFormFieldState createState() => _RetypePasswordFormFieldState();
// }

// class _RetypePasswordFormFieldState extends State<RetypePasswordFormField> {
//   bool _RetypePasswordVisible = false;
//   @override
//   Widget build(BuildContext context) {
//     String retypePassword;
//     return SizedBox(
//       width: 300,
//       child: Form(
//         key: widget.RetypePasswordFormKey, // Use the key here
//         child: TextFormField(
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           obscureText: !_RetypePasswordVisible,
//           decoration: InputDecoration(
//             labelText: 'Re-typePassword',
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             fillColor: Colors.grey.shade50,
//             filled: true,
//             suffixIcon: IconButton(
//               icon: Icon(
//                 _RetypePasswordVisible
//                     ? Icons.visibility_outlined
//                     : Icons.visibility_off_outlined,
//                 color: Theme.of(context).primaryColorDark,
//               ),
//               onPressed: () {
//                 setState(() {
//                   _RetypePasswordVisible = !_RetypePasswordVisible;
//                 });
//               },
//             ),
//           ),
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Please enter a password';
//             }
//             retypePassword = value;
//             if (password != retypePassword) {
//               return 'Passwords do not match';
//             }
//             return null;
//           },
//         ),
//       ),
//     );
//   }
// }