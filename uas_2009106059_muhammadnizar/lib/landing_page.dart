import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_2009106059_muhammadnizar/login.dart';
import 'package:uas_2009106059_muhammadnizar/home_page.dart';

class Hal1 extends StatelessWidget {
  const Hal1({Key? key}) : super(key: key);
  Widget myJudulGambar() {
    return Container(
      width: 300,
      height: 250,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/akuarium.png"),
        ),
      ),
    );
  }

  Widget myJudul() {
    return Container(
      width: 300,
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF76C9F3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "FishSekai",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Caveat',
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget myParagraf() {
    return Container(
      width: 320,
      height: 190,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10, top: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF76C9F3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "Disini menjual berberapa kebutuhan untuk dunia aquatic. seperti akuarium, makanan ikan, aksesoris akuarium, dan tentu saja ikan hias. \n-Muhammad Nizar 2009106059",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6F0FF),
      body: ListView(
        children: [
          Column(
            //Justify content
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //Align items
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myJudul(),
              myJudulGambar(),
              myParagraf(),
            ],
          ),
          const MyButton(),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 55,
      margin: const EdgeInsets.only(top: 10, bottom: 30, left: 40, right: 40),
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed:() => Get.to(Hal2()),
        child: const Text(
          "Login",
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Lato',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF76C9F3),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          minimumSize: const Size(200, 100),
        ),
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SizeContainer({Key? key,  required this.gambar});

  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 105,
      margin: const EdgeInsets.only(left: 20, right: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: const Color(0xFF76C9F3),
        ),
          image: DecorationImage(
            image: AssetImage(gambar),
          ),
      ),
    );
  }
}