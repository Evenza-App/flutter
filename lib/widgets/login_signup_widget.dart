import 'package:evenza/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginSignupWidget extends StatelessWidget {
  const LoginSignupWidget({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Image.asset(
              BaseImages.profile,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
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
                          title,
                          style: TextStyle(
                              fontSize: 27.h,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'أهلاٌ و سهلاٌ بك',
                          style: TextStyle(
                              fontSize: 23.h,
                              color: const Color.fromARGB(255, 255, 177, 131),
                              fontWeight: FontWeight.normal),
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
                    padding: EdgeInsets.only(top: 40.h),
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
                      child: content,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
