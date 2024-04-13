import 'package:evenza/screens/login.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';

class EventTypesScreen extends StatelessWidget {
  const EventTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      title: 'التصنيفات',
      onback: () => Get.off(const SelectTypeBuffet()),
      content: Padding(
        padding: EdgeInsets.only(left: 18.h, right: 18.h, top: 30.h),
        child: Row(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.h, right: 8.h),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 9.h),
                        child: Container(
                          width: 144.w,
                          height: 184.h,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 144.w,
                                  height: 184.h,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image:
                                          AssetImage(BaseImages.birthdayevent),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.w, color: Color(0xFF7A7A7A)),
                                      borderRadius: BorderRadius.circular(14.r),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 1.34.w,
                                top: 0.h,
                                child: Container(
                                  width: 150.32.w,
                                  height: 144.95.h,
                                ),
                              ),
                              Center(
                                  // left: 0.w,
                                  // top: 51.h,
                                  child: TextButton(
                                onPressed: () {
                                  Get.to(const ());
                                },
                                child: Text(
                                  'عيد ميلاد',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 9.h),
                      child: Container(
                        width: 144.w,
                        height: 184.h,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 144.w,
                                height: 184.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image:
                                        AssetImage(BaseImages.graduationevent),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.w, color: Color(0xFF7A7A7A)),
                                    borderRadius: BorderRadius.circular(14.r),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 1.34.w,
                              top: 0.h,
                              child: Container(
                                width: 150.32.w,
                                height: 144.95.h,
                              ),
                            ),
                            Center(
                                // left: 0.w,
                                // top: 51.h,
                                child: TextButton(
                              onPressed: () {
                                Get.to(const ());
                              },
                              child: Text(
                                'تخرج',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 9.h),
                      child: Container(
                        width: 144.w,
                        height: 184.h,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 144.w,
                                height: 184.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image:
                                        AssetImage(BaseImages.engagmentevent),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.w, color: Color(0xFF7A7A7A)),
                                    borderRadius: BorderRadius.circular(14.r),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 1.34.w,
                              top: 0.h,
                              child: Container(
                                width: 150.32.w,
                                height: 144.95.h,
                              ),
                            ),
                            Center(
                                // left: 0.w,
                                // top: 51.h,
                                child: TextButton(
                              onPressed: () {
                                Get.to(const ());
                              },
                              child: Text(
                                'خطوبة',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //
                // SizedBox(
                //   height: 10.h,
                // ),

                // SizedBox(
                //   height: 10.h,
                // ),
              ],
            ),
            Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.h, right: 8.h),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 9.h),
                        child: Container(
                          width: 144.w,
                          height: 184.h,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 144.w,
                                  height: 184.h,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image:
                                          AssetImage(BaseImages.weddingevent),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.w, color: Color(0xFF7A7A7A)),
                                      borderRadius: BorderRadius.circular(14.r),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 1.34.w,
                                top: 0.h,
                                child: Container(
                                  width: 150.32.w,
                                  height: 144.95.h,
                                ),
                              ),
                              Center(
                                  // left: 0.w,
                                  // top: 51.h,
                                  child: TextButton(
                                onPressed: () {
                                  Get.to(const ());
                                },
                                child: Text(
                                  'زواج',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 9.h),
                      child: Container(
                        width: 144.w,
                        height: 184.h,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 144.w,
                                height: 184.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(BaseImages.genderreveal),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.w, color: Color(0xFF7A7A7A)),
                                    borderRadius: BorderRadius.circular(14.r),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 1.34.w,
                              top: 0.h,
                              child: Container(
                                width: 150.32.w,
                                height: 144.95.h,
                              ),
                            ),
                            Center(
                                // left: 0.w,
                                // top: 51.h,
                                child: TextButton(
                              onPressed: () {
                                Get.to(const ());
                              },
                              child: Text(
                                'تحديد جنس المولود',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 9.h),
                      child: Container(
                        width: 144.w,
                        height: 184.h,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 144.w,
                                height: 184.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(BaseImages.openingevent),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.w, color: Color(0xFF7A7A7A)),
                                    borderRadius: BorderRadius.circular(14.r),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 1.34.w,
                              top: 0.h,
                              child: Container(
                                width: 150.32.w,
                                height: 144.95.h,
                              ),
                            ),
                            Center(
                                // left: 0.w,
                                // top: 51.h,
                                child: TextButton(
                              onPressed: () {
                                Get.to(const ());
                              },
                              child: Text(
                                'افتتاح',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //
                // SizedBox(
                //   height: 10.h,
                // ),

                // SizedBox(
                //   height: 10.h,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
