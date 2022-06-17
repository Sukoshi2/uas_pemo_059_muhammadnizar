import 'package:flutter/material.dart';
import 'package:uas_2009106059_muhammadnizar/home_page.dart';
import 'package:uas_2009106059_muhammadnizar/landing_page.dart';
import 'package:uas_2009106059_muhammadnizar/controller/textController.dart';
import 'package:get/get.dart';
import 'package:uas_2009106059_muhammadnizar/controller/textProfileController.dart';

class Hal2 extends StatelessWidget {
  Hal2({Key? key}) : super(key: key);

  Widget myJudul() {
    return Container(
      width: 300,
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF76C9F3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "Form Login",
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

  textProfileController tpc = Get.put(textProfileController());

  @override
  Widget build(BuildContext context) {
    var lebarukuran = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color(0xFFD6F0FF),
        // appBar: AppBar(
        //   title: const Text("FishSekai by M Nizar 059"),
        //   backgroundColor: const Color(0xFF76C9F3),
        //   automaticallyImplyLeading: false,
        // ),
        body: ListView(
          children: [
            myJudul(),
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Align items
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: const TextStyle(
                      color: Color(0xFF76C9F3),
                      fontSize: 20,
                    ),
                    controller: tpc.username1Ctrl,
                    decoration: const InputDecoration(
                      hintText: "Username Anda.....",
                      //  fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF76C9F3), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF76C9F3), width: 2.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      // ignore: unnecessary_new
                      // ignore: prefer_const_constructors
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Color(0xFF76C9F3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    style: const TextStyle(
                      color: Color(0xFF76C9F3),
                      fontSize: 20,
                    ),
                    controller: tpc.password1Ctrl,
                    decoration: const InputDecoration(
                      hintText: "Password Anda.....",
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF76C9F3), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF76C9F3), width: 2.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      // ignore: unnecessary_new
                      // ignore: prefer_const_constructors
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Color(0xFF76C9F3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                           margin: const EdgeInsets.only(
                          right: 20),
                          alignment: Alignment.centerLeft,
                          child: ElevatedButton(
                            onPressed: tpc.onPressed,
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Lato',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF76C9F3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)),
                              minimumSize: const Size(120, 40),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: ElevatedButton(
                            onPressed:() => Get.to(Hal1()),
                            child: const Text(
                              "Kembali",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Lato',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF76C9F3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)),
                              minimumSize: const Size(120, 40),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: lebarukuran,
                    margin: const EdgeInsets.only(
                        top: 40, bottom: 30, left: 40, right: 40),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: const Text('Berhasil Masuk!'),
                          action: SnackBarAction(
                            label: 'UNDO',
                            onPressed:() => Get.to(Hal2()),
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Get.to(Hal3());
                      },
                      child: const Text(
                        "Next Page",
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
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(200, 80),
                      ),
                    ),
                  ),

                  // ignore: avoid_unnecessary_containers
                ],
              ),
            ),
          ],
        ));
  }
}
