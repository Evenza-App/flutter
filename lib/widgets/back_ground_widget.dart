import 'package:evenza/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({
    super.key,
    required this.title,
    required this.onback,
    required this.content,
  });
  final String title;
  final void Function() onback;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: Stack(children: [
              Image.asset(
                BaseImages.backgroundarab,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Positioned(
                //bottom: 700.h,
                right: 0,
                left: 0,
                top: 40.h,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                            onPressed: onback,
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              textDirection: TextDirection.ltr,
                            ))),
                  ),
                  Center(
                      child: Column(children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 27.h,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    content
                  ])),
                ]),
              )
            ])));
  }
}
