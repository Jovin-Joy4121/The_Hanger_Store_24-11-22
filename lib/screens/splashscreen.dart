import 'dart:async';
import 'package:flutter/material.dart';

import '../login/homepage.dart';
import '../login/loginpage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>LoginPage()
            )));
  }
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: ListView(
            children:[ Column(
              children: [
                Container(
                    width: 200,
                    height :220
                ),
                Container(
                  //width: MediaQuery.of(context).size.width,
                  color:Colors.white,
                  child: Image(
                    image: AssetImage('assets/images/hsa1.png'),
                  ),
                ),
                CircularProgressIndicator(

                  backgroundColor: Colors.black,
                  color: Colors.white,
                  strokeWidth: 5,


                )
              ],
            ),
            ]
        ),
      ),
    );
  }
}
