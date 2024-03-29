import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'OnboardingScreen2.dart';
import 'Login.dart';
import 'package:get/get.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
          ),
          Image.asset(
            BaseImages.wedding,
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
                    width: 277,
                    height: 84,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: ' بعض المناسبات لا تأتي إلا \n',
                            style: TextStyle(
                              color: Color(0xFF845686),
                              fontSize: 17.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'مرة',
                            style: TextStyle(
                              color: Color(0xFFFFB183),
                              fontSize: 17.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: ' واحدة في ',
                            style: TextStyle(
                              color: Color(0xFF845686),
                              fontSize: 17.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'العمر\n',
                            style: TextStyle(
                              color: Color(0xFFFFB183),
                              fontSize: 17.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'استعد',
                            style: TextStyle(
                              color: Color(0xFFFFB183),
                              fontSize: 17.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: ' معنا لمناسبة',
                            style: TextStyle(
                              color: Color(0xFF845686),
                              fontSize: 17.h,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: ' لا تنسى !!',
                            style: TextStyle(
                              color: Color(0xFFFFB183),
                              fontSize: 17.h,
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
                                  onPressed: () {
                                    Get.to(OnboardingScreen2());
                                  },
                                  child: Text(
                                    'التالي',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
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
