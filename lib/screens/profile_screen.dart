import 'package:evenza/hooks/profile_hook.dart';
import 'package:evenza/models/profile.dart';
import 'package:evenza/screens/home.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/styles/text.dart';
import 'package:evenza/widgets/event_res.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:evenza/widgets/text_form_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends HookWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final (loading, profile) = useProfile(id: this.profile.id);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
          Image.asset(
            BaseImages.profile,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const DrawerIconWidget(),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        'ملفك الشخصي',
                        style: BaseTextStyles.font,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'أهلاٌ و سهلاٌ بك من جديد',
                        style: BaseTextStyles.fonto,
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 600.h,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20.h),
                  padding: EdgeInsets.only(top: 80.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      right: 18.h,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.account_circle),
                              iconColor: BaseColors.orange,
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(30.r)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              labelText: 'الاسم ',
                              labelStyle: TextStyle(
                                  fontSize: 15.sp,
                                  color:
                                      const Color.fromARGB(255, 161, 145, 162)),
                              contentPadding: EdgeInsets.all(8)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.location_on),
                              iconColor: BaseColors.orange,
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(30.r)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              labelText: 'العنوان',
                              labelStyle: TextStyle(
                                  fontSize: 15.sp,
                                  color:
                                      const Color.fromARGB(255, 161, 145, 162)),
                              contentPadding: EdgeInsets.all(8)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.phone),
                              iconColor: BaseColors.orange,
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(30.r)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              labelText: 'الهاتف',
                              labelStyle: TextStyle(
                                  fontSize: 15.sp,
                                  color:
                                      const Color.fromARGB(255, 161, 145, 162)),
                              contentPadding: EdgeInsets.all(8.h)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.email),
                              iconColor: BaseColors.orange,
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(30.r)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              labelText: 'البريد الشخصي',
                              labelStyle: TextStyle(
                                  fontSize: 15.sp,
                                  color:
                                      const Color.fromARGB(255, 161, 145, 162)),
                              contentPadding: EdgeInsets.all(8)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.password),
                              iconColor: BaseColors.orange,
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(30.r)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: BaseColors.primaryDark),
                                  borderRadius: BorderRadius.circular(30.r)),
                              labelText: 'كلمة المرور الجديدة',
                              labelStyle: TextStyle(
                                  fontSize: 15.sp,
                                  color:
                                      const Color.fromARGB(255, 161, 145, 162)),
                              contentPadding: EdgeInsets.all(10)),
                        )
                        // FormFeildWidget(onSaved: ,
                        //   validationText: 'أدخل عدد الأشخاص رجاءا',
                        //   hinttext: profile.name,
                        //   icon: const Icon(Icons.person),
                        // ),
                        // const FormFeildWidget(
                        //   onSaved: ,
                        //   validationText: 'أدخل عدد الأشخاص رجاءا',
                        //   hinttext: 'البريد الالكتروني',
                        //   icon: Icon(Icons.email_rounded),
                        // ),
                        // const FormFeildWidget(
                        //   validationText: 'أدخل عدد الأشخاص رجاءا',
                        //   hinttext: '',
                        //   icon: Icon(Icons.phone_android_outlined),
                        // ),
                        // const FormFeildWidget(
                        //   validationText: 'أدخل عدد الأشخاص رجاءا',
                        //   hinttext: 'عيد الميلاد',
                        //   icon: Icon(Icons.date_range_rounded),
                        // ),
                        // const FormFeildWidget(
                        //   validationText: 'أدخل عدد الأشخاص رجاءا',
                        //   hinttext: 'العنوان ',
                        //   icon: Icon(Icons.person),
                        // ),
                        // const FormFeildWidget(
                        //   validationText: 'أدخل عدد الأشخاص رجاءا',
                        //   hinttext: 'كلمة سر جديدة',
                        //   icon: Icon(Icons.password_rounded),
                        // ),
                        //
                        ,
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
                            child: const Center(
                              child: Text(
                                'تعديل',
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
