

import 'package:evenza/screens/lilian_projects.dart';
import 'package:evenza/screens/my_evevt.dart';
import 'package:evenza/screens/notification.dart';

import 'package:evenza/screens/setting.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/event_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(children: [
          Image.asset(
            BaseImages.home,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 77.h),
                  child: Column(children: [
                    Positioned(
                      //bottom: 700.h,
                      right: 0.w,
                      left: 0.w,
                      top: 40.h,
                      child: Column(children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // padding: EdgeInsets.only(left: 10),
                              margin: EdgeInsets.only(left: 241.w),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: TextButton(
                                      onPressed: () {
                                        Get.to(const Notificationn());
                                      },
                                      child: Image(
                                        image:
                                            const AssetImage(BaseImages.bell),
                                        width: 20.h,
                                        height: 20.h,
                                      ))),
                            ),
                            Container(
                              //padding: EdgeInsets.only(right: 230),

                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: TextButton(
                                      onPressed: () {
                                        Get.to(const Setting());
                                      },
                                      child: Image(
                                        image:
                                            const AssetImage(BaseImages.menu),
                                        width: 27.h,
                                        height: 27.h,
                                      ))),
                            ),
                          ],
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 200.w, top: 20.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'أهلا بك ناز',
                                    style: TextStyle(
                                        fontSize: 24.h,
                                        color: BaseColors.primaryDark,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    'مسرورين بإنضامك إلينا',
                                    style: TextStyle(
                                        fontSize: 14.h,
                                        color: BaseColors.orange,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Positioned(
                              child: Container(
                            padding: EdgeInsets.only(top: 50.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'الأعمال :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20.w),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.only(right: 225.w),
                                    child: TextButton(
                                        onPressed: () {
                                          Get.to(const LilianProjects());
                                        },
                                        child: Text(
                                          'المزيد',
                                          style: TextStyle(
                                              color: BaseColors.orange,
                                              fontSize: 17.w),
                                        )))
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        width: 100.w,
                        //alignment: Alignment.centerRight,
                        // width: double.infinity,
                        // padding: EdgeInsets.only(right: 20, left: 20),
                        //margin: EdgeInsets.only(left: 20),
                        child: SingleChildScrollView(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Container(
                              //   padding: EdgeInsets.only(top: 5.w),
                              //   width: 266.w,
                              //   height: 130.h,
                              //   decoration: ShapeDecoration(
                              //     image: const DecorationImage(
                              //       image: AssetImage(
                              //           'assets/projects/project1.png'),
                              //       fit: BoxFit.fill,
                              //     ),
                              //     shape: RoundedRectangleBorder(
                              //       side: BorderSide(
                              //           width: 1.w, color: Color(0xFF7A7A7A)),
                              //       borderRadius: BorderRadius.circular(14),
                              //     ),
                              //   ),
                              //   child: Column(
                              //     children: [
                              //       Container(
                              //         padding: EdgeInsets.only(top: 37, right: 125, left: 44),
                              //         child: Column(
                              //           crossAxisAlignment:
                              //               CrossAxisAlignment.start,
                              //           children: [
                              //             Text(
                              //               'احتفال عيد ميلاد',
                              //               style:
                              //                   TextStyle(color: Colors.white),
                              //             ),
                              //             Text('دمشق ,سوريا',
                              //                 style: TextStyle(
                              //                     color: Colors.white)),
                              //             Text('2022-2-22',
                              //                 style: TextStyle(
                              //                     color: Colors.white)),
                              //           ],
                              //         ),
                              //       )
                              //     ],
                              //   ),
                              // ),
                              // EventWidget(
                              //   title: 'عيد ميلاد',
                              //   date: '5-2-2022',
                              //   location: 'دمشق',
                              //   image: BaseImages.birthday,
                              // ),
                               EventWidget(
                                title: 'عيد ميلاد',
                                date: '5-2-2022',
                                location: 'دمشق',
                                image: BaseImages.birthday,
                                onNext:() {
                                Get.to( const Setting());
                              },
                              ),

                              // Container(
                              //   padding: EdgeInsets.only(top: 5.w),
                              //   width: 266.w,
                              //   height: 130.h,
                              //   decoration: ShapeDecoration(
                              //     image: const DecorationImage(
                              //       image: AssetImage(
                              //           'assets/projects/project2.png'),
                              //       fit: BoxFit.fill,
                              //     ),
                              //     shape: RoundedRectangleBorder(
                              //       side: BorderSide(
                              //           width: 1.w, color: Color(0xFF7A7A7A)),
                              //       borderRadius: BorderRadius.circular(14),
                              //     ),
                              //   ),
                              //   child: Column(
                              //     children: [
                              //       Container(
                              //         padding: EdgeInsets.only(
                              //             top: 37, right: 125, left: 44),
                              //         child: Column(
                              //           crossAxisAlignment:
                              //               CrossAxisAlignment.start,
                              //           children: [
                              //             Text(
                              //               'احتفال عيد ميلاد',
                              //               style:
                              //                   TextStyle(color: Colors.white),
                              //             ),
                              //             Text('دمشق ,سوريا',
                              //                 style: TextStyle(
                              //                     color: Colors.white)),
                              //             Text('2022-2-22',
                              //                 style: TextStyle(
                              //                     color: Colors.white)),
                              //           ],
                              //         ),
                              //       )
                              //     ],
                              //   ),
                              // ),
                              Container(
                                padding: EdgeInsets.only(top: 5.w),
                                width: 266.w,
                                height: 130.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/projects/project3.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.w, color: const Color(0xFF7A7A7A)),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 37.h, right: 125.w, left: 44.w),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'احتفال عيد ميلاد',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text('دمشق ,سوريا',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          Text('2022-2-22',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5.w),
                                width: 266.w,
                                height: 130.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/projects/project4.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.w, color: const Color(0xFF7A7A7A)),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 37.h, right: 125.w, left: 44.w),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'احتفال عيد ميلاد',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text('دمشق ,سوريا',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          Text('2022-2-22',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Positioned(
                              child: Container(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'ماذا يوجد لدينا ؟ ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20.w),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.only(right: 160.w),
                                    child: TextButton(
                                        onPressed: () {
                                          Get.to(const LilianProjects());
                                        },
                                        child: Text(
                                          'المزيد',
                                          style: TextStyle(
                                              color: BaseColors.orange,
                                              fontSize: 17.w),
                                        )))
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                    Positioned(
                        child: SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                                child: Row(children: [
                              Container(
                                padding: EdgeInsets.only(top: 20.h),
                                width: 266.w,
                                height: 130.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(BaseImages.event1),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.w, color: const Color(0xFF7A7A7A)),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20.w),
                                width: 266.w,
                                height: 130.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(BaseImages.event2),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.w, color: const Color(0xFF7A7A7A)),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20.w),
                                width: 266.w,
                                height: 130.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(BaseImages.event3),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.w, color: const Color(0xFF7A7A7A)),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20.w),
                                width: 266.w,
                                height: 130.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(BaseImages.event4),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.w, color: const Color(0xFF7A7A7A)),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              )
                            ])))),
                  ])),
              Container(
                width: 375.w,
                height: 75.h,
                margin: EdgeInsets.only(top: 130.h),
                decoration: const BoxDecoration(
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
                                image:
                                    const AssetImage('assets/icons/userN.png'),
                                width: 24.w,
                                height: 24.h,
                              ))),
                    ),
                    Container(
                      // padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(right: 20.w),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                Get.to(const Notificationn());
                              },
                              child: Image(
                                image:
                                    const AssetImage('assets/icons/grid.png'),
                                width: 24.w,
                                height: 24.h,
                              ))),
                    ),
                    Container(
                      // padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(right: 20.w),
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
                      margin: EdgeInsets.only(right: 20.w),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                Get.to(const Home());
                              },
                              child: Image(
                                image:
                                    const AssetImage('assets/icons/HomeN.png'),
                                width: 24.w,
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
            ],
          )
        ]),
      ),
    );
  }
}
