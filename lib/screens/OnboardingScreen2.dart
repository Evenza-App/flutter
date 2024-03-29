import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Login.dart';
import 'package:get/get.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
          ),
          Image.asset(
            BaseImages.baby,
            //  fit: BoxFit.cover,
            height: 500.h,
            width: 400.w,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 340.h,
              padding: EdgeInsets.only(top: 98.h),
              decoration: BoxDecoration(
                color: BaseColors.backgroundCard,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 277.w,
                    height: 30.h,
                    child: Text(
                      'استعدوا',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF845686),
                        fontSize: 17.h,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 142.w,
                    height: 30.h,
                    child: Text(
                      'واحتفلوا معنا',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xEDFFB183),
                        fontSize: 19.h,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      children: [
                        Expanded(
                            child: Center(
                          child: TextButton(
                            onPressed: () {
                              Get.to(Login());
                            },
                            child: Text(
                              'تخطي',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18.h,
                                  color: BaseColors.primary),
                            ),
                          ),
                        )),
                        Expanded(
                          child: Container(
                            height: 60.h,
                            padding: EdgeInsets.all(10.h),
                            decoration: BoxDecoration(
                              color: BaseColors.primary,
                              borderRadius: BorderRadius.circular(32.r),
                            ),
                            child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Get.to(Login());
                                  },
                                  child: Text(
                                    'التالي',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18.h,
                                        color: BaseColors.backgroundCard),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
