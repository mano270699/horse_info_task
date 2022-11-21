import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:horse_info/core/utils/app_colors.dart';

import 'config/routes/app_routes.dart';

import 'core/utils/app_strings.dart';

class HorseInfoApp extends StatelessWidget {
  const HorseInfoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (BuildContext context, _) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              backgroundColor: Colors.white,
              primaryColor: AppColors.primary,
              fontFamily: AppStrings.fontFamily,
            ),
            title: AppStrings.appName,
            initialRoute: Routes.INITIAL,
            getPages: Routes.routes,
          );
        });
  }
}
