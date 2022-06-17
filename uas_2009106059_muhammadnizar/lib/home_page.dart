import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_2009106059_muhammadnizar/login.dart';
import 'package:uas_2009106059_muhammadnizar/form.dart';
import 'package:uas_2009106059_muhammadnizar/content/profile.dart';
import 'package:uas_2009106059_muhammadnizar/content/ikan.dart';
import 'package:uas_2009106059_muhammadnizar/content/makanikan.dart';
import 'package:uas_2009106059_muhammadnizar/content/akuarium.dart';


class Hal3 extends StatefulWidget {
  const Hal3({Key? key}) : super(key: key);

  @override
  State<Hal3> createState() => _Hal3State();
}

class _Hal3State extends State<Hal3> {
  int _index = 0;
  static final List<Widget> _pages = [
    // bisa di ganti widget apapun
    const Ikan(),
    const MakananIkan(),
    const Akuarium(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FishSekai"),
        backgroundColor: const Color(0xFF76C9F3),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 100.0,
              child: const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF76C9F3)),
              child: Text(
                "FishSekai",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Caveat',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ), 
            ),
            ListTile(
              title: const Text(
                "Profile",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF76C9F3),
                ),
              ),
              leading: const Icon(
                Icons.people_alt_rounded,
                color: Color(0xFF76C9F3),
              ),
              onTap: () => Get.to(Profile()),
            ),
            ListTile(
              title: const Text(
                "Form Pendataan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF76C9F3),
                ),
              ),
              leading: const Icon(
                Icons.home,
                color: Color(0xFF76C9F3),
              ),
              onTap: () => Get.to(Form1()),
            ),
            ListTile(
              title: const Text(
                "Logout",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF76C9F3),
                ),
              ),
              leading: const Icon(
                Icons.door_back_door_outlined,
                color: Color(0xFF76C9F3),
              ),
              onTap: () => Get.to(Hal2()),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        selectedIconTheme: const IconThemeData(color: Color(0xFF76C9F3)),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/ikan1.png",
                width: 35,
                height: 35,
              ),
              label: "Ikan"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/fishbowl.png",
                width: 35,
                height: 35,
              ),
              label: "Makanan Ikan"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/akuarium.png",
                width: 35,
                height: 35,
              ),
              label: "Akuarium"),
        ],
      ),
      body: _pages.elementAt(_index),
    );
  }
}
