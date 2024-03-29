import 'package:evenza/screens/Login.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'OnboardingScreen1.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
          ),
          Image.asset(
            BaseImages.birthday,
            // fit: BoxFit.fitHeight,
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
                    width: 193.w,
                    height: 78.h,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'للعد التنازلي لمناسبة\n لن ترغب ',
                            style: TextStyle(
                              color: Color(0xFF855687),
                              fontSize: 19.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'في تفويتها ',
                            style: TextStyle(
                              color: Color(0xEDFFB183),
                              fontSize: 19.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
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
                                child: Text(
                                  'التالي',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.h,
                                      color: BaseColors.backgroundCard),
                                ),
                                onPressed: () {
                                  Get.to(OnboardingScreen1());
                                },
                              ),
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
