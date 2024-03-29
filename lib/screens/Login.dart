import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'SignUp.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          BaseImages.profile,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          child: Padding(
            padding:
                EdgeInsets.only(top: 110.0.h, right: 20.0.h, left: 110.0.h),
            child: Text(
              'تسجيل الدخول',
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
              ' أهلاٌ و سهلاٌ بك',
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
            child: Padding(
                padding: EdgeInsets.only(left: 18.h, right: 18.h, top: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.email_rounded,
                          color: Color.fromARGB(255, 247, 186, 151),
                        ),
                        label: Text('البريد الالكتروني',
                            style: TextStyle(
                                fontSize: 17.h,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFAF75B2))),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.password_rounded,
                            color: Color.fromARGB(255, 247, 186, 151),
                          ),
                          label: Text(' كلمة السر ',
                              style: TextStyle(
                                  fontSize: 17.h,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFAF75B2)))),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Container(
                      height: 60.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.r),
                        color: const Color(0xFFAF75B2),
                      ),
                      child: Center(
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18.h,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          Text(
                            'ليس لديك حساب ؟',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFFB183),
                              fontSize: 14.h,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: 0.07.h,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(SignUp());
                            },
                            child: Text(
                              'أنشئ حساب',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11.h,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 0.06.h,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ],
    ));
  }
}
