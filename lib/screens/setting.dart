
import 'package:evenza/screens/home2.dart';
import 'package:evenza/screens/my_evevt.dart';
import 'package:evenza/screens/notification.dart';
import 'package:evenza/widgets/back_ground_widgetS.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidgetS(
        title: 'الضبط',
        onback: () => Get.off(const HomeScreen()),
        content: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 70.h),
              child: Column(
                children: [
                  Positioned(
                      child: SizedBox(
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
                                image:
                                    const AssetImage('assets/icons/user.png'),
                                width: 28.w,
                                height: 28.h,
                              ),

                              //onTap: () {
                              // Get.to( profile())
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 12),
                              child: ListTile(
                                title: Text(
                                  " الوضع",
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.normal),
                                ),

                                leading: Image(
                                  image: const AssetImage(
                                      'assets/icons/color.png'),
                                  width: 28.w,
                                  height: 28.h,
                                ),

                                //onTap: () {
                                // Get.to( profile())
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 12),
                              child: ListTile(
                                title: Text(
                                  "اللغة",
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.normal),
                                ),

                                leading: Image(
                                  image: const AssetImage(
                                      'assets/icons/globe.png'),
                                  width: 28.w,
                                  height: 28.h,
                                ),

                                //onTap: () {
                                // Get.to( profile())
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 12),
                              child: ListTile(
                                title: Text(
                                  " الإشعارات",
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.normal),
                                ),
                                leading: Image(
                                  image:
                                      const AssetImage('assets/icons/bell.png'),
                                  width: 28.w,
                                  height: 28.h,
                                ),
                                onTap: () => Get.to(const Notificationn()),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 12),
                              child: ListTile(
                                  title: Text(
                                    " مناسباتي",
                                    style: TextStyle(
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  leading: Image(
                                    image: const AssetImage(
                                        'assets/icons/myevents1.png'),
                                    width: 28.w,
                                    height: 28.h,
                                  ),
                                  onTap: () {
                                    Get.to(const MyEvent());
                                  }),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 12),
                              child: ListTile(
                                title: Text(
                                  " تواصل معنا",
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.normal),
                                ),

                                leading: Image(
                                  image: const AssetImage(
                                      'assets/icons/phone-call.png'),
                                  width: 28.w,
                                  height: 28.h,
                                ),

                                //onTap: () {
                                // Get.to( profile())
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 12),
                              child: ListTile(
                                title: Text(
                                  " تسجيل الخروج",
                                  style: TextStyle(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.normal),
                                ),

                                leading: Image(
                                  image: const AssetImage(
                                      'assets/icons/log-out.png'),
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
