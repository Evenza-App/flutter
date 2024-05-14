import 'package:evenza/controllers/auth/profile_controller.dart';
import 'package:evenza/hooks/profile_hook.dart';
import 'package:evenza/hooks/user_hook.dart';
import 'package:evenza/models/profile.dart';
import 'package:evenza/screens/home.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/styles/text.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/event_res.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:evenza/widgets/text_form_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends HookWidget {
  const ProfileScreen({
    super.key,
  });

  static final ProfileController profileController =
      Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    final (loading, user) = useUser();
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
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 18.w),
                child: const DrawerIconWidget(),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Center(
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
                ),
                Container(
                  height: 550.h,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20.h),
                  // padding: EdgeInsets.only(top: 80.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 18.h, right: 18.h, top: 20.h),
                    child: Form(
                      child: ListView(children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 35.h),
                              child: Image.asset('assets/icons/Light.png'),
                            ),
                            TextFormField(
                              controller:
                                  TextEditingController(text: user.name),
                              onSaved: (newValue) =>
                                  profileController.user.name = newValue!,
                              keyboardType: TextInputType.name,
                              validator: 'required'.validate(customMessages: {
                                'required': 'أدخل أسمك رجاءا'
                              }),
                              decoration: InputDecoration(
                                  icon: Icon(Icons.account_circle),
                                  iconColor: BaseColors.orange,
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  labelText: 'الاسم ',
                                  labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: const Color.fromARGB(
                                          255, 161, 145, 162)),
                                  contentPadding: EdgeInsets.all(8)),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            TextFormField(
                              controller:
                                  TextEditingController(text: user.address),
                              onSaved: (newValue) =>
                                  profileController.user.address = newValue!,
                              keyboardType: TextInputType.name,
                              validator: 'required'.validate(customMessages: {
                                'required': ' أدخل عنوانك  رجاءا ',
                              }),
                              decoration: InputDecoration(
                                  icon: Icon(Icons.location_on),
                                  iconColor: BaseColors.orange,
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  labelText: 'العنوان',
                                  labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: const Color.fromARGB(
                                          255, 161, 145, 162)),
                                  contentPadding: EdgeInsets.all(8)),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            TextFormField(
                              controller:
                                  TextEditingController(text: user.phone),
                              onSaved: (newValue) =>
                                  profileController.user.phone = newValue!,
                              keyboardType: TextInputType.phone,
                              validator: 'required|min:10|max:10'
                                  .validate(customMessages: {
                                'required': 'أدخل رقمك رجاءا',
                                'min': 'أدخل رقما مكونا من 10 أرقام على الاقل',
                                'max': 'أدخل رقما مكونا من 10 أرقام على الاكثر',
                              }),
                              decoration: InputDecoration(
                                  icon: Icon(Icons.phone),
                                  iconColor: BaseColors.orange,
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  labelText: 'الهاتف',
                                  labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: const Color.fromARGB(
                                          255, 161, 145, 162)),
                                  contentPadding: EdgeInsets.all(8.h)),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            TextFormField(
                              controller:
                                  TextEditingController(text: user.email),
                              onSaved: (newValue) =>
                                  profileController.user.email = newValue!,
                              keyboardType: TextInputType.emailAddress,
                              validator: 'required|email'.validate(
                                  customMessages: {
                                    'required': ' أدخل بريدك الالكتروني رجاءا ',
                                    'email': ' يجب ان تدخل بريد فعال'
                                  }),
                              decoration: InputDecoration(
                                  icon: Icon(Icons.email),
                                  iconColor: BaseColors.orange,
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  labelText: 'البريد الشخصي',
                                  labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: const Color.fromARGB(
                                          255, 161, 145, 162)),
                                  contentPadding: EdgeInsets.all(8.h)),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            TextFormField(
                              // validator: 'required|min:8|max:25'
                              //     .validate(customMessages: {
                              //   'min':
                              //       'الرجاء ادخال كلمة مرور تتكون من 5 محارف على الاقل',
                              //   'max':
                              //       'الرجاء ادخال كلمة مرور تتكون من 25 محارف على الاكثر',
                              //   'required': ' أدخل كلمة المرور رجاءا ',
                              // }),
                              decoration: InputDecoration(
                                  icon: Icon(Icons.password),
                                  iconColor: BaseColors.orange,
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: BaseColors.primaryDark),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  labelText: 'كلمة المرور الجديدة',
                                  labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: const Color.fromARGB(
                                          255, 161, 145, 162)),
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
                            Builder(builder: (context) {
                              return TextButton(
                                onPressed: () {
                                  if (Form.of(context).validate()) {
                                    Form.of(context).save();

                                    profileController.updateprofile();
                                  }
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
                                    child: Obx(
                                        () => profileController.loading.value
                                            ? BaseLoading()
                                            : Text(
                                                'تعديل',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )),
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                      ]),
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
