import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:horse_info/features/horse_info/presentation/controller/horse_info_controller.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_drop_down.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/custom_textform.dart';

class HorseInfoView extends GetView<HorseInfoController> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  HorseInfoView({Key? key}) : super(key: key);

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
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColors.whiteColor,
            ),
          ),
        ),
        body: Form(
          key: _globalKey,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Container(
                          height: 200.h,
                          width: double.infinity,
                          color: AppColors.blackColor,
                        ),
                        Positioned(
                            top: 10.h,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 700.h,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  topLeft: Radius.circular(25),
                                ),
                              ),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: AppColors.blackColor
                                            .withOpacity(0.14),
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
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
                                                customFontWeight:
                                                    FontWeight.w400,
                                              ),
                                              CustomText(
                                                text: "اقصي حجم 3 ميجا",
                                                fontSize: 10.sp,
                                                customFontWeight:
                                                    FontWeight.w300,
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: CustomTextField(
                                        hintColor: AppColors.blackColor
                                            .withOpacity(0.57),
                                        controller: controller
                                            .horseNameController.value,
                                        hint: "اسم الخيل",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: CustomTextField(
                                        hintColor: AppColors.blackColor
                                            .withOpacity(0.57),
                                        controller: controller
                                            .horseTypeController.value,
                                        hint: "نوع الحصان ",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
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
                                      padding: EdgeInsets.only(
                                          left: 50.w, right: 5.w),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: CustomDropdown(
                                            list: controller.months,
                                            currentValue: controller
                                                .currentSelectedMonthValue
                                                .value,
                                            onChanged: (value) {
                                              controller
                                                  .currentSelectedMonthValue
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Obx(
                                              () => InkWell(
                                                onTap: () {
                                                  controller.isMealSelected
                                                      .value = true;
                                                },
                                                child: Container(
                                                  height: 43.h,
                                                  decoration: BoxDecoration(
                                                      border: controller
                                                              .isMealSelected
                                                              .value
                                                          ? const Border(
                                                              bottom: BorderSide
                                                                  .none,
                                                              left: BorderSide
                                                                  .none,
                                                              right: BorderSide
                                                                  .none,
                                                              top: BorderSide
                                                                  .none)
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
                                                              top: BorderSide(color: AppColors.blackColor)),
                                                      color: controller.isMealSelected.value ? AppColors.blackColor : AppColors.whiteColor,
                                                      borderRadius: BorderRadius.circular(56.sp)),
                                                  child: Center(
                                                      child: CustomText(
                                                    fontColor: controller
                                                            .isMealSelected
                                                            .value
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
                                                                bottom: BorderSide
                                                                    .none,
                                                                left: BorderSide
                                                                    .none,
                                                                right: BorderSide
                                                                    .none,
                                                                top: BorderSide
                                                                    .none)
                                                            : Border(
                                                                bottom: BorderSide(
                                                                    color: AppColors
                                                                        .blackColor),
                                                                left: BorderSide(
                                                                    color: AppColors
                                                                        .blackColor),
                                                                right: BorderSide(
                                                                    color:
                                                                        AppColors.blackColor),
                                                                top: BorderSide(color: AppColors.blackColor)),
                                                        color: !controller.isMealSelected.value ? AppColors.blackColor : AppColors.whiteColor,
                                                        borderRadius: BorderRadius.circular(56.sp)),
                                                    child: Center(
                                                        child: CustomText(
                                                      fontColor: !controller
                                                              .isMealSelected
                                                              .value
                                                          ? AppColors.whiteColor
                                                          : AppColors
                                                              .blackColor,
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.hammer,
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
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              )),
              SliverFillRemaining(
                hasScrollBody: false,
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      // const Expanded(
                      //   child: SizedBox(),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
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

  // Widget typeFieldWidget() {
  //   return Container(
  //     padding: EdgeInsets.symmetric(horizontal: 20),
  //     child: FormField<String>(
  //       builder: (FormFieldState<String> state) {
  //         return InputDecorator(
  //           decoration: InputDecoration(
  //               border: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(5.0))),
  //           child: DropdownButtonHideUnderline(
  //             child: DropdownButton<String>(
  //               hint: Text("Select Device"),
  //               value: currentSelectedValue,
  //               isDense: true,
  //               onChanged: (newValue) {
  //                 setState(() {
  //                   currentSelectedValue = newValue;
  //                 });
  //                 print(currentSelectedValue);
  //               },
  //               items: deviceTypes.map((String value) {
  //                 return DropdownMenuItem<String>(
  //                   value: value,
  //                   child: Text(value),
  //                 );
  //               }).toList(),
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }
}
