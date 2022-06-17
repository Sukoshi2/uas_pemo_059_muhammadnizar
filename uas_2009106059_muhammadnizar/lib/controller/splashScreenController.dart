import 'dart:async';
import 'package:get/get.dart';
import 'package:uas_2009106059_muhammadnizar/landing_page.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    start();
  }

  start() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Get.off(() => Hal1());
    });
  }
}