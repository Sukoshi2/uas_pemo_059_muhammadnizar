// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uas_2009106059_muhammadnizar/home_page.dart';
import 'package:uas_2009106059_muhammadnizar/controller/textController.dart';
import 'package:get/get.dart';

class EditForm2 extends StatelessWidget {
  const EditForm2({Key? key, required this.docName}) : super(key: key);

  final String docName;
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
        "Edit Barang Barang FishSekai",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Caveat',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var lebarukuran = MediaQuery.of(context).size.width;
    textController tc = Get.put(textController());
    tc.fill(docName);
    return Scaffold(
        backgroundColor: const Color(0xFFD6F0FF),
        appBar: AppBar(
          title: const Text("Edit Data"),
          backgroundColor: const Color(0xFF76C9F3),
        ),
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
                    controller: tc.namaCtrl,
                    decoration: const InputDecoration(
                      hintText: "Isi Nama Barang yang ingin dimasukan",
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
                      labelText: "Nama Barang",
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
                    controller: tc.jumlahCtrl,
                    decoration: const InputDecoration(
                      hintText: "Isi Jumlah Barang yang ingin dimasukan",
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
                      labelText: "Jumlah Barang",
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
                    controller: tc.hargaCtrl,
                    decoration: const InputDecoration(
                      hintText: "Isi Harga Barang yang ingin dimasukan",
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
                      labelText: "Harga Barang",
                      labelStyle: TextStyle(
                        color: Color(0xFF76C9F3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Jenis Barang : ",
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Lato',
                      color: Color(0xFF76C9F3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  for (var item in tc.jenisList)
                    Row(
                      children: [
                        Obx(
                          () => Radio(
                            activeColor: Color(0xFF76C9F3),
                            value: item,
                            groupValue: tc.jenis.value,
                            onChanged: (v) {
                              tc.jenis.value = v.toString();
                            },
                          ),
                        ),
                        Text(
                          item,
                          style: TextStyle(
                            color: Color(0xFF76C9F3),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: lebarukuran,
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 30, left: 40, right: 40),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () async {
                        await FirebaseFirestore.instance
                            .collection("barang")
                            .doc(docName)
                            .update({
                          "nama": tc.namaCtrl.text,
                          "jumlah": int.tryParse(tc.jumlahCtrl.text) ?? - 1,
                          "harga": int.tryParse(tc.hargaCtrl.text) ?? - 1,
                          "jenis": tc.jenis.value,
                        });
                        FocusScope.of(context).unfocus();
                        // Ini Snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Data berhasil 'Diperbarui'",
                            ),
                          ),
                        );
                        Get.back();
                        Get.back();
                      },
                      child: const Text(
                        "Update",
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
                        minimumSize: const Size(200, 50),
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
