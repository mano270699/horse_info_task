import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'config/routes/app_routes.dart';
import 'config/themes/app_theme.dart';
import 'core/utils/app_strings.dart';
import 'core/utils/constants.dart';

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
              // primaryColor: ColorsUtils.PRIMARY,
              // fontFamily: Constants.fontFamily,
            ),
            title: AppStrings.appName,
            initialRoute: Routes.INITIAL,
            getPages: Routes.routes,
          );
        });
  }
}
