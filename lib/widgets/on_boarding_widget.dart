import 'package:evenza/screens/login.dart';
import 'package:evenza/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onNext,
  });

  final String imagePath;

  final Widget text;

  final void Function() onNext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
          ),
          Image.asset(
            imagePath,
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
                    child: text,
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
                              Get.to(const Login());
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
                            padding: EdgeInsets.all(10.h),
                            decoration: BoxDecoration(
                              color: BaseColors.primary,
                              borderRadius: BorderRadius.circular(32.r),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: onNext,
                                child: Text(
                                  'التالي',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.sp,
                                      color: BaseColors.backgroundCard),
                                ),
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
