import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HorseInfoController extends GetxController {
  var horseNameController = TextEditingController().obs;
  var horseTypeController = TextEditingController().obs;
  var currentSelectedMonthValue = "شهر".obs;
  var currentSelectedYearValue = "سنة".obs;
  var currentSelectedColorValue = "اسود".obs;
  var months = ["شهر", "01", "02"];
  var isMealSelected = true.obs;
  var year = ["سنة", "2000", "2001"];
  var colors = ["اسود", "أحمر", "أبيض"];
  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
