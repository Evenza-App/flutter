import 'package:evenza/styles/color.dart';
import 'package:evenza/widgets/event_res.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginSignupWidget(
      title: 'حسابك الشخصي',
      content: Column(
        children: [
          FormFeildWidget(
            hinttext: 'الاسم',
            icon: Icon(Icons.person),
          ),
          FormFeildWidget(
            hinttext: 'البريد الالكتروني',
            icon: Icon(Icons.email_rounded),
          ),
          FormFeildWidget(
            hinttext: 'الهاتف المحمول',
            icon: Icon(Icons.phone_android_outlined),
          ),
          FormFeildWidget(
            hinttext: 'عيد الميلاد',
            icon: Icon(Icons.date_range_rounded),
          ),
          FormFeildWidget(
            hinttext: 'العنوان ',
            icon: Icon(Icons.person),
          ),
          FormFeildWidget(
            hinttext: 'كلمة سر جديدة',
            icon: Icon(Icons.password_rounded),
          ),
          SizedBox(
            height: 20.h,
          ),
          TextButton(
            onPressed: () {
              Get.off(());
            },
            child: Container(
              width: 250.73.w,
              height: 46.h,
              decoration: ShapeDecoration(
                color: BaseColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              child: Center(
                child: Text(
                  'تم',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
