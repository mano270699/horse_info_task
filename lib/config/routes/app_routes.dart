import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horse_info/features/horse_info/presentation/controller/horse_info_binding.dart';

import '../../core/utils/app_strings.dart';
import '../../features/horse_info/presentation/screens/horse_info_screen.dart';

class Routes {
  static const String INITIAL = '/';
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HorseInfoView(),
      binding: HorseInfoBinding(),
    ),
  ];
}
