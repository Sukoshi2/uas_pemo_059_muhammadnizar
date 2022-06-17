import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class textProfileController extends GetxController{
  var username1 = ''.obs;
  var password1 = ''.obs;
  TextEditingController username1Ctrl = TextEditingController();
  TextEditingController password1Ctrl = TextEditingController();

  onPressed(){
    username1(username1Ctrl.text);
    password1(password1Ctrl.text);
  }
  @override
  void onClose() {
    username1Ctrl.dispose();
    password1Ctrl.dispose();
    super.onClose();
  }
}