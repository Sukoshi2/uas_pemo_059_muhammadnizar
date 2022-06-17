import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_2009106059_muhammadnizar/landing_page.dart';
import 'package:uas_2009106059_muhammadnizar/controller/splashScreenController.dart';

class SplashScreen extends StatelessWidget {
  SplashScreenController ssc = Get.put(SplashScreenController());

  Widget myJudul() {
    return Container(
      width: 300,
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 150),
      child: const Text(
        "FishSekai",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Caveat',
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF76C9F3),
        ),
      ),
    );
  }

  // Widget myGambar() {
  //   return Container(
  //                 width: MediaQuery.of(context).size.width,
  //           height: MediaQuery.of(context).size.height,
  //     margin: const EdgeInsets.only(top: 10),
  //     decoration: const BoxDecoration(
  //       image: DecorationImage(
  //         image: AssetImage("assets/images/ikan1.png"),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            //Justify content
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //Align items
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myJudul(),
              Container(
                child: Center(
                  child: Image.asset(
                    'assets/images/ikan1.png',
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/2,
                  ),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}