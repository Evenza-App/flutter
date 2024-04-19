import 'package:device_preview/device_preview.dart';
import 'package:evenza/firebase_options.dart';
import 'package:evenza/screens/home.dart';
import 'package:evenza/screens/lilian_projects.dart';
import 'package:evenza/screens/my_evevt.dart';
import 'package:evenza/screens/notification.dart';
import 'package:evenza/screens/select_photographer.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/back_ground_widgetS.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:evenza/styles/text.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidgetS(
        title: 'الضبط',
        onback: () => Get.off(const Home()),
        content: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 70.h),
              child: Column(
                children: [
                  Positioned(
                      child: Container(
                          height: 550.h,
                          child: SingleChildScrollView(
                              child: Column(children: [
                            ListTile(
                              title: Text(
                                "حسابك الشخصي",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.normal),
                              ),

                              leading: Image(
                                image: AssetImage('assets/icons/user.png'),
                                width: 28.w,
                                height: 28.h,
                              ),

                              //onTap: () {
                              // Get.to( profile())
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              child: ListTile(
                                title: Text(
                                  " الوضع",
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.normal),
                                ),

                                leading: Image(
                                  image: AssetImage('assets/icons/color.png'),
                                  width: 28.w,
                                  height: 28.h,
                                ),

                                //onTap: () {
                                // Get.to( profile())
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              child: ListTile(
                                title: Text(
                                  "اللغة",
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.normal),
                                ),

                                leading: Image(
                                  image: AssetImage('assets/icons/globe.png'),
                                  width: 28.w,
                                  height: 28.h,
                                ),

                                //onTap: () {
                                // Get.to( profile())
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              child: ListTile(
                                title: Text(
                                  " الإشعارات",
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.normal),
                                ),
                                leading: Image(
                                  image: AssetImage('assets/icons/bell.png'),
                                  width: 28.w,
                                  height: 28.h,
                                ),
                                onTap: () => Get.to(Notificationn()),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              child: ListTile(
                                  title: Text(
                                    " مناسباتي",
                                    style: TextStyle(
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  leading: Image(
                                    image: AssetImage(
                                        'assets/icons/myevents1.png'),
                                    width: 28.w,
                                    height: 28.h,
                                  ),
                                  onTap: () {
                                    Get.to(MyEvent());
                                  }),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              child: ListTile(
                                title: Text(
                                  " تواصل معنا",
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.normal),
                                ),

                                leading: Image(
                                  image:
                                      AssetImage('assets/icons/phone-call.png'),
                                  width: 28.w,
                                  height: 28.h,
                                ),

                                //onTap: () {
                                // Get.to( profile())
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              child: ListTile(
                                title: Text(
                                  " تسجيل الخروج",
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.normal),
                                ),

                                leading: Image(
                                  image: AssetImage('assets/icons/log-out.png'),
                                  width: 28.w,
                                  height: 28.h,
                                ),

                                //onTap: () {
                                // Get.to( profile())
                              ),
                            ),
                          ])))),
                ],
              ),
            ),
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
                  // Image(
                  //   image: AssetImage('assets/icons/userN.png'),
                  //   width: 24.h,
                  //   height: 24.h,
                  // ),
                  // Image(
                  //     image: AssetImage('assets/icons/grid.png'),
                  //     width: 24.h,
                  //     height: 24.h),
                  // Image(
                  //     image: AssetImage('assets/icons/HomeN.png'),
                  //     width: 24.h,
                  //     height: 24.h),
                  // Image(
                  //     image: AssetImage('assets/icons/HomeN.png'),
                  //     width: 24.h,
                  //     height: 24.h),
                ],
              ),
            )
            // Positioned(
            //   left: 0.h,
            //   right: 0.h,
            //   child: Container(
            //     padding: EdgeInsets.only(
            //         top: 11.h, bottom: 0.h, right: 0.h, left: 0.h),
            //     alignment: Alignment.bottomCenter,
            //     width: double.infinity,
            //     child: Stack(
            //       children: [
            //         Image(
            //           image: AssetImage('assets/images/bottomnav.png'),
            //           fit: BoxFit.cover,
            //         )
            //       ],
            //     ),
            //   ),
            // )
          ],
        ));
  }
}
