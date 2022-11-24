import 'package:flutter/material.dart';
import 'package:hangerstore_test/login/loginpage.dart';
import 'package:hangerstore_test/login/registerpage.dart';
import 'package:hangerstore_test/login/homepage.dart';
import 'package:hangerstore_test/screens/splashscreen.dart';
const String loginPage="login";
const String homePage="home";
const String registerPage="register";
const String splashScreen="splashscreen";
void login(){}
Route<dynamic> controller(RouteSettings settings){
  switch(settings.name){
    case loginPage:
      return MaterialPageRoute(builder: (context)=>LoginPage());
    case homePage:
      return MaterialPageRoute(builder: (context)=>HomePage());
    case registerPage:
      return MaterialPageRoute(builder: (context)=>RegisterPage());
    case splashScreen:
      return MaterialPageRoute(builder: (context)=>SplashScreen());
    default:
      throw('This route name does not exist');
  }
}
