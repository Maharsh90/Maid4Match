import 'package:maidfinal/category.dart';
import 'package:maidfinal/grid.dart';
import 'package:maidfinal/newhome.dart';
import 'package:maidfinal/so.dart';
import 'package:flutter/material.dart';
import 'package:maidfinal/home.dart';
import 'package:maidfinal/clean1.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class MyLogin extends StatefulWidget {
  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _EmailFormKey = GlobalKey<FormState>();
  final _passwordFormKey = GlobalKey<FormState>();
  bool _showErrorMessage = false;
  String _errorMessage = '';
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
                  width: 330,
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
                                  Icon(
                                    Icons.account_circle_sharp,
                                    color: Colors.lightBlue.shade900,
                                    // color:Colors.white,
                                  ),
                                  Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.lightBlue.shade900,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
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
                            SizedBox(height: 20),
                            PasswordFormField(
                              passwordFormKey: _passwordFormKey, // Pass the key to the PasswordFormField
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () async {
                                if (_EmailFormKey.currentState!.validate() &&
                                    _passwordFormKey.currentState!.validate()) {
                                  setState(() {
                                    _showErrorMessage = false;
                                    _errorMessage = '';
                                  });
                                  const url =
                                      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyC6z5Jmi4trJBNJqW8PBUwtCFa0FzRbVwA';
                                  final response = await http.post(Uri.parse(url),
                                      body: json.encode({
                                        'email': email.text,
                                        'password': password.text,
                                        'returnSecureToken': true,
                                      }));

                                  if (response.statusCode == 200) {
                                    final responseData = json.decode(response.body);
                                    final authToken = responseData['idToken'];
                                    print(authToken);
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GamApp()),);
                                    Fluttertoast.showToast(msg: "singup successfully",  toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.blue,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                    }
                                  } else {
                                    var response;
                                    final responseData = json.decode(response.body);
                                    final errorMessage = responseData['error']['message'];
                                    if (errorMessage == 'INVALID_PASSWORD') {
                                      Fluttertoast.showToast(msg: "Error Occurred, Try Again");
                                      setState(() {
                                        _showErrorMessage = true;
                                        _errorMessage = 'Invalid password. Please try again.';
                                      });
                                    } else {
                                      setState(() {
                                        _showErrorMessage = true;
                                        _errorMessage = errorMessage;
                                      });
                                    }
                                  }
                                 
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
                                  Text('Login'),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Center(child:TextButton(
                              child:Text(
                                "Create a new account",
                                style: TextStyle(
                                  // color: Colors.lightBlue.shade900,
                                  color: Colors.blueAccent.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApp()),
                                );
                              },
                            ),
                            ),
                            SizedBox(height: 10),
                            Center(child:TextButton(
                              child:Text(
                                "Forgot Password",
                                style: TextStyle(
                                  color: Colors.blueAccent.shade400,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => MyApp()),
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
            return null;
          },
        ),
      ),
    );
  }
}