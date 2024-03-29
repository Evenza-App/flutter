import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        BaseImages.profile,
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 110.0.h, right: 20.0.h, left: 110.0.h),
          child: Text(
            'إنشاء حساب',
            style: TextStyle(
                fontSize: 27.h,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 160.h, right: 30.0.h, left: 120.0.h),
          child: Text(
            'أهلاٌ و سهلاٌ بك',
            style: TextStyle(
                fontSize: 23.h,
                color: Color.fromARGB(255, 255, 177, 131),
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
      Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 600.h,
            padding: EdgeInsets.only(top: 98.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.r),
                topRight: Radius.circular(50.r),
              ),
            ),
          )),
    ]));
  }
}
