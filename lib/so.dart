import 'package:maidfinal/lo.dart';
import 'package:flutter/material.dart';
import 'package:maidfinal/lo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

TextEditingController firstname=TextEditingController();
TextEditingController lastname=TextEditingController();
TextEditingController email=TextEditingController();
TextEditingController Contact=TextEditingController();
TextEditingController address=TextEditingController();
TextEditingController pass=TextEditingController();
TextEditingController retypass=TextEditingController();

var password='';


class Register_class extends StatefulWidget {
  @override
  State<Register_class> createState() => _Register_classState();
}

class _Register_classState extends State<Register_class> {
  final _firstNameFormKey = GlobalKey<FormState>();
  final _lastNameFormKey = GlobalKey<FormState>();
  final _ContactFormKey = GlobalKey<FormState>();
  final _AddressFormKey = GlobalKey<FormState>();
  final _EmailFormKey = GlobalKey<FormState>();
  final _GenderFormKey = GlobalKey<FormState>();
  final _passwordFormKey = GlobalKey<FormState>();
  final _RetypePasswordFormKey = GlobalKey<FormState>();
  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
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
                                controller: firstname,
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
                                controller: lastname,
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
                                controller: email,
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
                            SizedBox(height: 8),
                            Form(
                              key: _GenderFormKey,
                              child: DropdownButtonFormField<String>(
                                value: selectedGender,
                                onChanged: (value) {
                                  setState(() {
                                    selectedGender = value;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    value: 'Male',
                                    child: Text('Male'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Female',
                                    child: Text('Female'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Other',
                                    child: Text('Other'),
                                  ),
                                ],
                                decoration: InputDecoration(
                                  labelText: 'Select Gender',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  fillColor: Colors.grey.shade50,
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                      return 'Please Enter your Gender';
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
                            RetypePasswordFormField(
                              RetypePasswordFormKey: _RetypePasswordFormKey, // Pass the key to the PasswordFormField
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {
                                if (_firstNameFormKey.currentState!.validate() && _lastNameFormKey.currentState!.validate() && _AddressFormKey.currentState!.validate() && _ContactFormKey.currentState!.validate() && _EmailFormKey.currentState!.validate() && _GenderFormKey.currentState!.validate() && _passwordFormKey.currentState!.validate()) {
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),),
                              onPressed: () {
                                if (_firstNameFormKey.currentState!.validate() && _lastNameFormKey.currentState!.validate() && _ContactFormKey.currentState!.validate() && _EmailFormKey.currentState!.validate() && _AddressFormKey.currentState!.validate() && _passwordFormKey.currentState!.validate() && _RetypePasswordFormKey.currentState!.validate()) {
                                  print("validated");
                                  const Url='https://maidtomatch-b263d-default-rtdb.firebaseio.com/Signup.json';
                                  http.post(Uri.parse(Url),body: json.encode({
                                    'firstname':firstname.text,
                                    'lastname':lastname.text,
                                    'contact':Contact.text,
                                    'email':email.text,
                                    'password':pass.text,
                                    'RetypePassword':retypass.text,
                                  }));
                                  print(firstname.text);
                                  print(lastname.text);
                                  print(Contact.text);
                                  print(email.text);
                                  print(pass.text); //for password
                                  print(retypass.text);
                                } else {
                                  print("Not validated");
                                }
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyLogin()),
                                );
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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Form(
        key: widget.passwordFormKey, // Use the key here
        child: TextFormField(
          controller: pass,
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
            password=value;
            return null;
          },
        ),
      ),
    );
  }
}

class RetypePasswordFormField extends StatefulWidget {
  final GlobalKey<FormState> RetypePasswordFormKey; // Declare the key here
  RetypePasswordFormField({Key? key, required this.RetypePasswordFormKey}) : super(key: key);
  @override
  _RetypePasswordFormFieldState createState() => _RetypePasswordFormFieldState();
}

class _RetypePasswordFormFieldState extends State<RetypePasswordFormField> {
  bool _RetypePasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    String retypePassword;
    return SizedBox(
      width: 300,
      child: Form(
        key: widget.RetypePasswordFormKey, // Use the key here
        child: TextFormField(
          controller: retypass,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: !_RetypePasswordVisible,
          decoration: InputDecoration(
            labelText: 'Re-typePassword',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            fillColor: Colors.grey.shade50,
            filled: true,
            suffixIcon: IconButton(
              icon: Icon(
                _RetypePasswordVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: Theme.of(context).primaryColorDark,
              ),
              onPressed: () {
                setState(() {
                  _RetypePasswordVisible = !_RetypePasswordVisible;
                });
              },
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a password';
            }
            retypePassword = value;
            if (password != retypePassword) {
              return 'Passwords do not match';
            }
            return null;
          },
        ),
      ),
    );
  }
}