import 'package:evenza/styles/color.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'SignUp.dart';
import 'package:get/get.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';

class Login extends HookWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    String? email, password;
    return LoginSignupWidget(
      title: 'تسجيل الدخول',
      content: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              onSaved: (newValue) => email = newValue,
              validator: 'required|email'.validate(customMessages: {
                'required': ' أدخل بريدك الالكتروني رجاءا ',
                'email': ' يجب ان تدخل بريد فعال'
              }),
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.email_rounded,
                  color: Color.fromARGB(255, 247, 186, 151),
                ),
                label: Text('البريد الالكتروني',
                    style: TextStyle(
                        fontSize: 17.h,
                        fontWeight: FontWeight.bold,
                        color: BaseColors.primaryDark)),
              ),
            ),
            PasswordField(onSaved: (newValue) => password = newValue),
            SizedBox(
              height: 50.h,
            ),
            Builder(builder: (context) {
              return InkWell(
                onTap: () {
                  if (Form.of(context).validate()) {
                    Form.of(context).save();
                  }
                },
                child: Container(
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
              );
            }),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'ليس لديك حساب ؟',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFFFB183),
                      fontSize: 14.h,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: 0.07.h,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.off(const SignUpScreen());
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
          label: Text(' كلمة السر ',
              style: TextStyle(
                  fontSize: 17.h,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFAF75B2)))),
    );
  }
}
