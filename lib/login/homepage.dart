import 'package:flutter/material.dart';
import 'package:hangerstore_test/login/route.dart'as route;
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black45),
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/images/hsa1.png'),
        ),
        titleSpacing: 00.0,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 10,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                child: Image(image: AssetImage('assets/images/hanger1.jpg'),),
                backgroundColor: Colors.white,
                radius: 35,


              ),
              ListTile(
                leading: Icon(Icons.circle_outlined, color: Colors.black45),
                title: Text("About Us", style: TextStyle(
                  color: Colors.black,
                ),),
              ),
              ListTile(
                leading: Icon(Icons.circle_outlined, color: Colors.black45,),
                title: Text("Reviews", style: TextStyle(
                  color: Colors.black,
                ),),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: GradientText(
                  'Welcome to Hanger Store,\nAn Estore specialized on various types of Cloth Hangers and Mannequins.',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                  colors: [
                    Colors.black,
                    Colors.black45,
                    Colors.black,
                  ],

                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
