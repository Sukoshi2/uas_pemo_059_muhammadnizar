// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_2009106059_muhammadnizar/content/editForm.dart';
import 'package:uas_2009106059_muhammadnizar/home_page.dart';
import 'package:uas_2009106059_muhammadnizar/main.dart';

class DetailBarang extends StatelessWidget {
  const DetailBarang({
    Key? key,
    required this.nama,
    required this.jumlah,
    required this.harga,
    required this.jenis,
    required this.gambar1,
    required this.doc,
  }) : super(key: key);

  final String nama;
  final String jumlah;
  final String harga;
  final String jenis;
  final String gambar1;
  final String doc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
        backgroundColor: const Color(0xFF76C9F3),
      ),
      backgroundColor: const Color(0xFFD6F0FF),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //Align items
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                      color: const Color(0xFF76C9F3),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      SizeContainer(gambar: gambar1),
                      Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          nama,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF76C9F3),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          jumlah,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF76C9F3),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          harga,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF76C9F3),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          jenis,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF76C9F3),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(
                        EditForm2(docName: doc),
                      );
                    },
                    child: Text("Edit"),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                        title: "Yakin ingin hapus?",
                        middleText: "",
                        textConfirm: "Hapus",
                        textCancel: "Batal",
                        onConfirm: () {
                          FirebaseFirestore.instance
                              .collection("barang")
                              .doc(doc)
                              .delete();
                          Get.back(canPop: true);
                          Get.back();
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text("Hapus"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SizeContainer({Key? key, required this.gambar});

  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      margin: const EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(gambar),
        ),
      ),
    );
  }
}
