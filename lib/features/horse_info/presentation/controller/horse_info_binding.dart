import 'package:get/get.dart';

import 'horse_info_controller.dart';

class HorseInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HorseInfoController());
  }
}
