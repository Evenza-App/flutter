import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:evenza/firebase_options.dart';
import 'package:evenza/hooks/photographers_hook.dart';
import 'package:evenza/models/photographer.dart';
import 'package:evenza/screens/heba_projects.dart';
import 'package:evenza/screens/home.dart';
import 'package:evenza/screens/notification.dart';
import 'package:evenza/screens/select_photographer.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:google_fonts/google_fonts.dart';

class MyEvent extends StatelessWidget {
  const MyEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        title: 'مناسباتي',
        onback: () => Get.off(const Home()),
        content: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 65.h),
                child: Column(children: [
                  Container(
                    height: 550.h,
                    child: SingleChildScrollView(
                      child: Positioned(
                          child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5.w),
                              width: 308.w,
                              height: 157.h,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/myEvents/birthdayEvent.png'),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1.w, color: Color(0xFF7A7A7A)),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 37, right: 140, left: 44),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'احتفال عيد ميلاد',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text('دمشق ,سوريا',
                                            style: TextStyle(color: Colors.white)),
                                        Text('2022-2-22',
                                            style: TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5.w, right: 5.w),
                              margin: EdgeInsets.only(top: 12.w),
                              width: 308.w,
                              height: 157.h,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/myEvents/myEvent2.png'),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1.w, color: Color(0xFF7A7A7A)),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 37, right: 120, left: 44),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'احتفال تخرج',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text('دمشق ,سوريا',
                                            style: TextStyle(color: Colors.white)),
                                        Text('2022-2-22',
                                            style: TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                  )
                ])),

                Container(
              width: 375,
              height: 75,
              margin: EdgeInsets.only(top: 12.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                color: Color.fromARGB(255, 222, 216, 255),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // padding: EdgeInsets.only(left: 20),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Get.to(const Notificationn());
                            },
                            child: Image(
                              image: const AssetImage('assets/icons/userN.png'),
                              width: 24.h,
                              height: 24.h,
                            ))),
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(right: 20),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Get.to(const Notificationn());
                            },
                            child: Image(
                              image: const AssetImage('assets/icons/grid.png'),
                              width: 24.h,
                              height: 24.h,
                            ))),
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(right: 20),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Get.to(const MyEvent());
                            },
                            child: Image(
                              image: const AssetImage(
                                  'assets/icons/myeventn1.png'),
                              width: 24.h,
                              height: 24.h,
                            ))),
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(right: 20),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Get.to(const Home());
                            },
                            child: Image(
                              image: const AssetImage('assets/icons/HomeN.png'),
                              width: 24.h,
                              height: 24.h,
                            ))),
                  ),
                  
                ],
              ),
            )
          ],
        ));
  }
}
