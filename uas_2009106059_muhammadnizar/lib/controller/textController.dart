import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class textController extends GetxController {
  var jenis = "Ikan".obs;
  List<String> jenisList = ["Ikan", "Makanan Ikan", "Akuarium"];

  void fill(String docName) async {
    await FirebaseFirestore.instance
        .collection("barang")
        .doc(docName)
        .get()
        .then((value) {
      namaCtrl.text = value.get("nama");
      jumlahCtrl.text = value.get("jumlah").toString();
      hargaCtrl.text = value.get("harga").toString();
      jenis.value = value.get("jenis");
    });
  }

  final namaCtrl = TextEditingController();
  final jumlahCtrl = TextEditingController();
  final hargaCtrl = TextEditingController();
}
