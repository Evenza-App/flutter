import 'package:evenza/screens/login.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    String? email, password, name, phone, address;

    return LoginSignupWidget(
        title: 'إنشاء حساب',
        content: SingleChildScrollView(
          child: Form(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            TextFormField(
              onSaved: (newValue) => phone = newValue,
              keyboardType: TextInputType.name,
              validator: 'required'
                  .validate(customMessages: {'required': 'أدخل أسمك رجاءا'}),
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.person_2_rounded,
                  color: Color.fromARGB(255, 247, 186, 151),
                ),
                label: Text('الاسم',
                    style: TextStyle(
                        fontSize: 17.h,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFAF75B2))),
              ),
            ),
            TextFormField(
              onSaved: (newValue) => phone = newValue,
              keyboardType: TextInputType.phone,
              validator: 'required|min:10|max:10'.validate(customMessages: {
                'required': 'أدخل رقمك رجاءا',
                'min': 'أدخل رقما مكونا من 10 أرقام على الاقل',
                'max': 'أدخل رقما مكونا من 10 أرقام على الاكثر',
              }),
              decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 247, 186, 151),
                  ),
                  label: Text('الرقم',
                      style: TextStyle(
                          fontSize: 17.h,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFAF75B2)))),
            ),
            TextFormField(
              onSaved: (newValue) => address = newValue,
              validator: 'required'.validate(customMessages: {
                'required': ' أدخل عنوانك  رجاءا ',
              }),
              decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.home_filled,
                    color: Color.fromARGB(255, 247, 186, 151),
                  ),
                  label: Text('العنوان',
                      style: TextStyle(
                          fontSize: 17.h,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFAF75B2)))),
            ),
            TextFormField(
              onSaved: (newValue) => email = newValue,
              keyboardType: TextInputType.emailAddress,
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
            // TextField(
            // decoration: InputDecoration(
            //    suffixIcon: const Icon(
            //     Icons.password_rounded,
            //     color: Color.fromARGB(255, 247, 186, 151),
            //  ),
            //  label: Text('تأكيد كلمة السر',
            //     style: TextStyle(
            //       fontSize: 17.h,
            //      fontWeight: FontWeight.bold,
            //      color: const Color(0xFFAF75B2)))),
            // ),
            SizedBox(
              height: 30.h,
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
                      'إنشاء حساب',
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
                  SizedBox(height: 5.0.h),
                  Text(
                    ' لديك حساب ؟',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFFFB183),
                      fontSize: 14.h,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const Login());
                    },
                    child: Text(
                      ' سجل دخولك',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  )
                ],
              ),
            )
          ])),
        ));
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
        'min': 'الرجاء ادخال كلمة مرور تتكون من 5 محارف على الاقل',
        'max': 'الرجاء ادخال كلمة مرور تتكون من 25 محارف على الاكثر'
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
