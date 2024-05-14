import 'package:evenza/controllers/auth/login_controller.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'SignUp.dart';
import 'package:get/get.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';

class Login extends HookWidget {
  Login({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return LoginSignupWidget(
      title: 'تسجيل الدخول',
      content: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 330.h,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 50.h),
                        child: Image.asset('assets/icons/Light.png'),
                      ),
                      TextFormField(
                        onSaved: (newValue) => loginController.email = newValue,
                        validator: 'required|email'.validate(customMessages: {
                          'required': ' أدخل بريدك الالكتروني رجاءا ',
                          'email': ' يجب ان تدخل بريد فعال'
                        }),
                        decoration: InputDecoration(
                          hintText: '',
                          suffixIcon: const Icon(
                            Icons.email_rounded,
                            color: Color.fromARGB(255, 247, 186, 151),
                          ),
                          label: Text('البريد الالكتروني',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFAF75B2))),
                        ),
                      ),
                      PasswordField(
                          onSaved: (newValue) =>
                              loginController.password = newValue),
                      SizedBox(
                        height: 50.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.h,
              left: 0.h,
              right: 0.h,
              child: Builder(builder: (context) {
                return InkWell(
                  onTap: () {
                    if (Form.of(context).validate()) {
                      Form.of(context).save();

                      loginController.login();
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Container(
                      height: 55.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.r),
                        color: const Color(0xFFAF75B2),
                      ),
                      child: Center(
                        child: Obx(() => loginController.loading.value
                            ? const BaseLoading()
                            : Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                              )),
                      ),
                    ),
                  ),
                );
              }),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Text(
                      'ليس لديك حساب ؟',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFFFFB183),
                        fontSize: 15.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.07.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.off(SignUpScreen());
                      },
                      child: Text(
                        'أنشئ حساب',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.06.sp,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PasswordField extends HookWidget {
  const PasswordField({super.key, required this.onSaved});

  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    final isPasswordVisible = useState(true);
    return TextFormField(
      obscureText: isPasswordVisible.value,
      onSaved: onSaved,
      validator: 'required|min:8|max:25'.validate(customMessages: {
        'required': 'ادخل كلمة المرور رجاءا',
        'min': 'الرجاء ادخال كلمة مرور تتكون من 5 محارف على الاقل',
        'max': 'الرجاء ادخال كلمة مرور تتكون من 25 محارف على الاكثر',
      }),
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () => isPasswordVisible.value = !isPasswordVisible.value,
            child: const Icon(
              Icons.password_rounded,
              color: Color.fromARGB(255, 247, 186, 151),
            ),
          ),
          label: Text(' كلمة المرور ',
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFAF75B2)))),
    );
  }
}
