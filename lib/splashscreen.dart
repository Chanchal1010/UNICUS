import 'dart:async';
import 'package:flutter/material.dart';
import 'homepage.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                     homepage()  )
        )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 105, 4, 88),Color.fromARGB(255, 139, 11, 109),]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [ Column(
              children: [
                Image.asset(
                  "assests/UNICUS.png",
                  height: 450.0,
                  width: 350.0,
                ),
                Text("UNIque-US",
                style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white)
                ),
            Text("Everybody is genius",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            )

              ],
            ),   
          ],
        ),
      ),
    );
  }
}