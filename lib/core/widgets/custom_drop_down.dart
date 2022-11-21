import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:horse_info/features/horse_info/presentation/controller/horse_info_controller.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';

class CustomDropdown extends GetView<HorseInfoController> {
  CustomDropdown(
      {Key? key,
      required this.list,
      required this.onChanged,
      required this.currentValue})
      : super(key: key);
  List<String> list;
  String currentValue;
  void Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(65.0.sp))),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                style: TextStyle(
                    fontFamily: AppStrings.fontFamily,
                    color: AppColors.blackColor.withOpacity(0.57),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300),
                value: currentValue,
                isDense: true,
                onChanged: onChanged,
                items: list.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
