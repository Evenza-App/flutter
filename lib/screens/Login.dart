import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'SignUp.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return LoginSignupWidget(
      title: 'تسجيل الدخول',
      content: Column(
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
                    Get.to(SignUpScreen());
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
      ),
    );
  }
}
