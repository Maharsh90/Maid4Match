
import 'package:maidfinal/cart.dart';
import 'package:maidfinal/category.dart';
import 'package:maidfinal/grid.dart';
import 'package:maidfinal/inside_clean.dart';
import 'package:maidfinal/lo.dart';
import 'package:maidfinal/newhome.dart';
import 'package:maidfinal/payment-success.dart';
import 'package:maidfinal/payment.dart';
import 'package:maidfinal/profile.dart';
import 'package:maidfinal/starterPage.dart';
import 'package:flutter/material.dart';
import 'package:maidfinal/main.dart';
import 'package:maidfinal/so.dart';
import 'package:maidfinal/home.dart';
import 'package:maidfinal/Editprofile.dart';
import 'package:maidfinal/clean1.dart';
import 'package:maidfinal/toprated.dart';
import 'package:maidfinal/viewall.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'start':(context)=>StartPage(),
      'register':(context)=>Register_class(),
      'home':(context)=>HomePage(),
      'cleaningpage':(context)=>CleaningPage(),
      'editprofile':(context)=>MyEditProfile(),
      'profile':(context)=>MyProfile(),
       'Home1':(context)=>GamApp(),
      'cart':(context)=>CartPage(),
      'cate':(context)=>MyApp(),
      'payment':(context)=>PaymentPage(),
      'paymentsucess':(context)=>PaymentSuccess(),
      'viewall':(context)=>ViewAll(),
      'toprated':(context)=>TopRated(),

    },
  ));
}