import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwanistore/src/view/screens/home_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//implementing splashscreen
   @override
   void initState() {
    Timer(Duration(seconds: 3), () => Get.to(() => HomeScreen()));
     super.initState();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("ecommerce.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken)),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
               "Lamuzon Store",
               style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 26),
             ),
             SizedBox(
               height: 20,
             ),
             Text(
               "Lamuzon Store is a one stop market for all your needs",
               textAlign: TextAlign.center,
               style: TextStyle(
                   color: Colors.white70,
                   fontWeight: FontWeight.bold,
                   fontSize: 18),
             ),
            //TOP SECTION

      ]
        ),
      ),

    );
  }
}