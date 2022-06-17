import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_2009106059_muhammadnizar/controller/textProfileController.dart';
import 'package:uas_2009106059_muhammadnizar/login.dart';
import 'package:uas_2009106059_muhammadnizar/home_page.dart';
import 'package:uas_2009106059_muhammadnizar/login.dart';
class Profile extends StatelessWidget {

  Profile({
    Key? key,
  }) : super(key: key);

  textProfileController tpc = Get.find();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color(0xFF76C9F3),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: 265.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage("assets/images/bglaut.jpg")),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                      color: const Color(0xFF76C9F3),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        alignment: Alignment.center,
                        child: Text(
                          "${tpc.username1}", // bisa panggil username
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xFF76C9F3),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 10, left: 105, right: 105),
                        alignment: Alignment.center,
                        child: const Text(
                          "ID: 100000001", // bisa panggil username
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF76C9F3),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: const Color(0xFF76C9F3),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: const Color(0xFF76C9F3),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        margin: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 25,
                          right: 25,
                        ),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Nickname \n${tpc.username1}\n\nJenis Kelamin\nLaki-Laki\n\nDeskripsi\nHalo, Saya adalah Pengguna Baru!!\n\nPassword\n${tpc.password1}",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF76C9F3),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          // Profile image
          Positioned(
            top: 150.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    image: new AssetImage("assets/images/lumine.jpg")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
