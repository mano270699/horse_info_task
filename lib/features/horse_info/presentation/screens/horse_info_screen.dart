import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:horse_info/core/utils/app_strings.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_drop_down.dart';
import '../../../../core/widgets/custom_rounded_btn.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/custom_textform.dart';
import '../controller/horse_info_controller.dart';

class HorseInfoView extends GetView<HorseInfoController> {
  const HorseInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AppColors.blackColor,
          title: CustomText(
            text: "سجل بياناتك",
            fontSize: 16.sp,
            fontColor: AppColors.whiteColor,
            customFontWeight: FontWeight.w300,
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => TestScreen()));
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColors.whiteColor,
            ),
          ),
        ),
        body: Container(
          color: AppColors.whiteColor,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: AppColors.whiteColor,
                    child: Stack(
                      children: [
                        Container(
                          height: 50.h,
                          color: AppColors.blackColor,
                        ),
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(25),
                                topLeft: Radius.circular(25),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color:
                                        AppColors.blackColor.withOpacity(0.14),
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(25),
                                      topLeft: Radius.circular(25),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.w),
                                      child: CustomText(
                                        text: "معلومات الخيول",
                                        fontSize: 14.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      addProfileImage(),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: "صور للخيل ",
                                            fontSize: 14.sp,
                                            customFontWeight: FontWeight.w400,
                                          ),
                                          CustomText(
                                            text: "اقصي حجم 3 ميجا",
                                            fontSize: 10.sp,
                                            customFontWeight: FontWeight.w300,
                                            fontColor: AppColors.hint
                                                .withOpacity(0.91),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.horse,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: "الاسم",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: CustomTextField(
                                    hintColor:
                                        AppColors.blackColor.withOpacity(0.57),
                                    controller:
                                        controller.horseNameController.value,
                                    hint: "اسم الخيل",
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.horse,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: "النوع",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: CustomTextField(
                                    hintColor:
                                        AppColors.blackColor.withOpacity(0.57),
                                    controller:
                                        controller.horseTypeController.value,
                                    hint: "نوع الحصان ",
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: "تاريخ الميلاد",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 50.w, right: 5.w),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: CustomDropdown(
                                        list: controller.months,
                                        currentValue: controller
                                            .currentSelectedMonthValue.value,
                                        onChanged: (value) {
                                          controller.currentSelectedMonthValue
                                              .value = value!;
                                        },
                                      )),
                                      Expanded(
                                          child: CustomDropdown(
                                              list: controller.year,
                                              currentValue: controller
                                                  .currentSelectedYearValue
                                                  .value,
                                              onChanged: (value) {
                                                controller
                                                    .currentSelectedYearValue
                                                    .value = value!;
                                              })),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.marsAndVenus,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: "النوع",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Obx(
                                          () => InkWell(
                                            onTap: () {
                                              controller.isMealSelected.value =
                                                  true;
                                            },
                                            child: Container(
                                              height: 43.h,
                                              decoration: BoxDecoration(
                                                  border: controller.isMealSelected.value
                                                      ? const Border(
                                                          bottom:
                                                              BorderSide.none,
                                                          left: BorderSide.none,
                                                          right:
                                                              BorderSide.none,
                                                          top: BorderSide.none)
                                                      : Border(
                                                          bottom: BorderSide(
                                                              color: AppColors
                                                                  .blackColor),
                                                          left: BorderSide(
                                                              color: AppColors
                                                                  .blackColor),
                                                          right: BorderSide(
                                                              color: AppColors
                                                                  .blackColor),
                                                          top: BorderSide(
                                                              color: AppColors
                                                                  .blackColor)),
                                                  color: controller.isMealSelected.value
                                                      ? AppColors.blackColor
                                                      : AppColors.whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(56.sp)),
                                              child: Center(
                                                  child: CustomText(
                                                fontColor: controller
                                                        .isMealSelected.value
                                                    ? AppColors.whiteColor
                                                    : AppColors.blackColor,
                                                text: "ذكر",
                                                fontSize: 16.sp,
                                                customFontWeight:
                                                    FontWeight.w300,
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Expanded(
                                        child: Obx(() => InkWell(
                                              onTap: () {
                                                controller.isMealSelected
                                                    .value = false;
                                              },
                                              child: Container(
                                                height: 43.h,
                                                decoration: BoxDecoration(
                                                    border: !controller
                                                            .isMealSelected
                                                            .value
                                                        ? const Border(
                                                            bottom:
                                                                BorderSide.none,
                                                            left:
                                                                BorderSide.none,
                                                            right:
                                                                BorderSide.none,
                                                            top:
                                                                BorderSide.none)
                                                        : Border(
                                                            bottom: BorderSide(
                                                                color: AppColors
                                                                    .blackColor),
                                                            left: BorderSide(
                                                                color: AppColors
                                                                    .blackColor),
                                                            right: BorderSide(
                                                                color: AppColors
                                                                    .blackColor),
                                                            top:
                                                                BorderSide(color: AppColors.blackColor)),
                                                    color: !controller.isMealSelected.value ? AppColors.blackColor : AppColors.whiteColor,
                                                    borderRadius: BorderRadius.circular(56.sp)),
                                                child: Center(
                                                    child: CustomText(
                                                  fontColor: !controller
                                                          .isMealSelected.value
                                                      ? AppColors.whiteColor
                                                      : AppColors.blackColor,
                                                  text: "أنثي",
                                                  fontSize: 16.sp,
                                                  customFontWeight:
                                                      FontWeight.w300,
                                                )),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.droplet,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: "اللون",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  width: 223.w,
                                  child: CustomDropdown(
                                      list: controller.colors,
                                      currentValue: controller
                                          .currentSelectedColorValue.value,
                                      onChanged: (value) {
                                        controller.currentSelectedColorValue
                                            .value = value!;
                                      }),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.textHeight,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: "الارتفاع",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  width: 223.w,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: CustomTextField(
                                    hintColor:
                                        AppColors.blackColor.withOpacity(0.57),
                                    controller:
                                        controller.horseNameController.value,
                                    hint: "0.00 m",
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.marsAndVenus,
                                                  color: AppColors.primary,
                                                  size: 13.sp,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                CustomText(
                                                  text: "الاب",
                                                  fontSize: 16.sp,
                                                  customFontWeight:
                                                      FontWeight.w400,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w),
                                            child: CustomTextField(
                                              hintColor: AppColors.blackColor
                                                  .withOpacity(0.57),
                                              controller: controller
                                                  .horseNameController.value,
                                              hint: "نوع الاب",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20.w),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.marsAndVenus,
                                                  color: AppColors.primary,
                                                  size: 13.sp,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                CustomText(
                                                  text: "الام",
                                                  fontSize: 16.sp,
                                                  customFontWeight:
                                                      FontWeight.w400,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w),
                                            child: CustomTextField(
                                              hintColor: AppColors.blackColor
                                                  .withOpacity(0.57),
                                              controller: controller
                                                  .horseNameController.value,
                                              hint: "نوع الام",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.horseHead,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: "نبذه عنه",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: TextField(
                                    textAlignVertical: TextAlignVertical.top,

                                    textInputAction: TextInputAction.newline,

                                    keyboardType: TextInputType.multiline,

                                    minLines: null,

                                    maxLines:
                                        null, // If this is null, there is no limit to the number of lines, and the text container will start with enough vertical space for one line and automatically grow to accommodate additional lines as they are entered.

                                    // expands: true,

                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(23),
                                          borderSide: BorderSide(
                                              color: AppColors.hint)),

                                      hintText: "نبذه عن الحصان",

                                      hintStyle: TextStyle(
                                          color: AppColors.blackColor
                                              .withOpacity(0.24),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: AppStrings.fontFamily),

                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: AppColors.hint)),

                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: AppColors.hint)),

                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: AppColors.hint)),

                                      // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
                                    ), // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      addFile(),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: " اضف جواز الحصان ",
                                            fontSize: 14.sp,
                                            customFontWeight: FontWeight.w400,
                                          ),
                                          CustomText(
                                            text: "اقصي حجم 3 ميجا و بصيغة PDF",
                                            fontSize: 10.sp,
                                            customFontWeight: FontWeight.w300,
                                            fontColor: AppColors.hint
                                                .withOpacity(0.91),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      addFile(),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: "اضف برنت الحصان",
                                            fontSize: 14.sp,
                                            customFontWeight: FontWeight.w400,
                                          ),
                                          CustomText(
                                            text: "اقصي حجم 3 ميجا و بصيغة PDF",
                                            fontSize: 10.sp,
                                            customFontWeight: FontWeight.w300,
                                            fontColor: AppColors.hint
                                                .withOpacity(0.91),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: CustomText(
                                    text: "+  إضافة خيل  اخر",
                                    hasUnderLineBorder: true,
                                    customFontWeight: FontWeight.w300,
                                    fontColor:
                                        AppColors.blackColor.withOpacity(0.57),
                                    fontSize: 14.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 33.h,
                                  width: double.infinity,
                                  color: AppColors.hint.withOpacity(0.14),
                                  padding:
                                      EdgeInsets.only(top: 5.h, right: 20.w),
                                  child: CustomText(
                                    text: "معلومات الاسطبل",
                                    customFontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    fontColor: AppColors.blackColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      addProfileImage(),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: "صور للمكان",
                                            fontSize: 14.sp,
                                            customFontWeight: FontWeight.w400,
                                          ),
                                          CustomText(
                                            text: "اقصي حجم 3 ميجا",
                                            fontSize: 10.sp,
                                            customFontWeight: FontWeight.w300,
                                            fontColor: AppColors.hint
                                                .withOpacity(0.91),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.mapLocationDot,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: "العنوان",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: CustomTextField(
                                    hintColor:
                                        AppColors.blackColor.withOpacity(0.57),
                                    controller:
                                        controller.horseNameController.value,
                                    hint: "العنوان",
                                    sufficIcon: Icon(
                                      FontAwesomeIcons.locationDot,
                                      size: 15,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.restroom,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: "عدد الغرف",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  width: 188.w,
                                  child: CustomDropdown(
                                    list: controller.number,
                                    currentValue: controller
                                        .currentSelectednumValue.value,
                                    onChanged: (value) {
                                      controller.currentSelectednumValue.value =
                                          value!;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.restroom,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: " اسطبل",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  width: 188.w,
                                  child: CustomDropdown(
                                    list: controller.number,
                                    currentValue: controller
                                        .currentSelectednumValue.value,
                                    onChanged: (value) {
                                      controller.currentSelectednumValue.value =
                                          value!;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.w),
                                          child: Row(
                                            children: [
                                              Icon(
                                                FontAwesomeIcons.restroom,
                                                color: AppColors.primary,
                                                size: 13.sp,
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              CustomText(
                                                text: " بادوك",
                                                fontSize: 16.sp,
                                                customFontWeight:
                                                    FontWeight.w400,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        CustomDropdown(
                                          list: controller.number,
                                          currentValue: controller
                                              .currentSelectednumValue.value,
                                          onChanged: (value) {
                                            controller.currentSelectednumValue
                                                .value = value!;
                                          },
                                        ),
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.w),
                                          child: Row(
                                            children: [
                                              Icon(
                                                FontAwesomeIcons.restroom,
                                                color: AppColors.primary,
                                                size: 13.sp,
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              CustomText(
                                                text: "بايكة",
                                                fontSize: 16.sp,
                                                customFontWeight:
                                                    FontWeight.w400,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        CustomDropdown(
                                            list: controller.number,
                                            currentValue: controller
                                                .currentSelectednumValue.value,
                                            onChanged: (value) {
                                              controller.currentSelectednumValue
                                                  .value = value!;
                                            }),
                                      ],
                                    )),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.horseHead,
                                        color: AppColors.primary,
                                        size: 13.sp,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomText(
                                        text: "نبذه عنه",
                                        fontSize: 16.sp,
                                        customFontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: TextField(
                                    textAlignVertical: TextAlignVertical.top,

                                    textInputAction: TextInputAction.newline,

                                    keyboardType: TextInputType.multiline,

                                    minLines: null,

                                    maxLines:
                                        null, // If this is null, there is no limit to the number of lines, and the text container will start with enough vertical space for one line and automatically grow to accommodate additional lines as they are entered.

                                    // expands: true,

                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(23),
                                          borderSide: BorderSide(
                                              color: AppColors.hint)),

                                      hintText: "نبذه عن الحصان",

                                      hintStyle: TextStyle(
                                          color: AppColors.blackColor
                                              .withOpacity(0.24),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: AppStrings.fontFamily),

                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: AppColors.hint)),

                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: AppColors.hint)),

                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: AppColors.hint)),

                                      // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
                                    ), // If set to true and wrapped in a parent widget like [Expanded] or [SizedBox], the input will expand to fill the parent.
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: CustomText(
                                    text: "+   إضافة اسطبل  اخر ",
                                    hasUnderLineBorder: true,
                                    customFontWeight: FontWeight.w400,
                                    fontColor: AppColors.blackColor,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    Obx(
                                      () => Checkbox(
                                        activeColor: AppColors.primary,
                                        checkColor: AppColors.whiteColor,
                                        overlayColor:
                                            MaterialStateColor.resolveWith(
                                          (states) {
                                            if (states.contains(
                                                MaterialState.selected)) {
                                              return AppColors
                                                  .primary; // the color when checkbox is selected;

                                            }

                                            return AppColors
                                                .primary; //the color when checkbox is unselected;
                                          },
                                        ),
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                          (states) {
                                            if (states.contains(
                                                MaterialState.selected)) {
                                              return AppColors
                                                  .primary; // the color when checkbox is selected;

                                            }

                                            return AppColors.blackColor.withOpacity(
                                                0.57); //the color when checkbox is unselected;
                                          },
                                        ),
                                        value: controller.isChecked.value,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.padded,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(1)),
                                        onChanged: (bool? value) {
                                          controller.isChecked.value =
                                              !controller.isChecked.value;
                                        },
                                      ),
                                    ),
                                    CustomText(
                                      text: "ليس لدي مكان بعد",
                                      fontColor: AppColors.blackColor
                                          .withOpacity(0.57),
                                      fontSize: 14.sp,
                                      customFontWeight: FontWeight.w300,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 8.sp,
                                      backgroundColor: AppColors.primary,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    CircleAvatar(
                                      radius: 8.sp,
                                      backgroundColor: AppColors.primary,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: CustomOutlinedButton(
                                        text: "التالي",
                                        backgroundColor: AppColors.primary,
                                        textColor: AppColors.whiteColor,
                                        borderColor: AppColors.primary,
                                        pressed: () {},
                                      )),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Expanded(
                                          child: CustomOutlinedButton(
                                        text: "تخطي",
                                        backgroundColor: AppColors.hint,
                                        textColor: AppColors.whiteColor,
                                        pressed: () {},
                                        borderColor: AppColors.hint,
                                      )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget addProfileImage() {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 31,
          backgroundColor: AppColors.hint,
          child: CircleAvatar(
              backgroundColor: AppColors.whiteColor,
              radius: 30,
              backgroundImage: AssetImage('assets/images/user.png')),
        ),
        Positioned(
          right: 0,
          child: CircleAvatar(
              radius: 10,
              backgroundColor: AppColors.primary,
              child: Center(
                child: Icon(
                  FontAwesomeIcons.cog,
                  size: 12,
                  color: AppColors.whiteColor,
                ),
              )),
        ),
      ],
    );
  }

  Widget addFile() {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor: AppColors.hint,
          child: CircleAvatar(
            backgroundColor: AppColors.whiteColor,
            radius: 25,
            child: Icon(
              FontAwesomeIcons.fileCirclePlus,
              color: AppColors.blackColor,
              size: 15,
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: CircleAvatar(
              radius: 8,
              backgroundColor: AppColors.primary,
              child: Center(
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 10,
                  color: AppColors.whiteColor,
                ),
              )),
        ),
      ],
    );
  }
}
