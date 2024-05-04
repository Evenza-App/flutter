import 'package:evenza/screens/home.dart';
import 'package:evenza/screens/notification.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyEvent extends StatelessWidget {
  const MyEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
          Image.asset(
            BaseImages.backgroundarab,
            fit: BoxFit.fill,
            height: Get.height,
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
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: DrawerIconWidget(),
                  // child: TextButton(
                  //     onPressed: null,
                  //     child: const Icon(
                  //       Icons.arrow_back_ios_new,
                  // textDirection: TextDirection.ltr,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'مناسباتي',
                      style: TextStyle(
                          fontSize: 27.h,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 10.h, right: 10.h, top: 65.h),
                            child: Column(children: [
                              SizedBox(
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
                                                  width: 1.w,
                                                  color:
                                                      const Color(0xFF7A7A7A)),
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    top: 37,
                                                    right: 140,
                                                    left: 44),
                                                child: const Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'احتفال عيد ميلاد',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text('دمشق ,سوريا',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    Text('2022-2-22',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 5.w, right: 5.w),
                                          margin: EdgeInsets.only(top: 12.w),
                                          width: 308.w,
                                          height: 157.h,
                                          decoration: ShapeDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/myEvents/myEvent2.png'),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1.w,
                                                  color:
                                                      const Color(0xFF7A7A7A)),
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    top: 37,
                                                    right: 120,
                                                    left: 44),
                                                child: const Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'احتفال تخرج',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text('دمشق ,سوريا',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    Text('2022-2-22',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
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
                                          image: const AssetImage(
                                              'assets/icons/userN.png'),
                                          width: 24.h,
                                          height: 24.h,
                                        ))),
                              ),
                              Container(
                                // padding: EdgeInsets.only(left: 20),
                                margin: const EdgeInsets.only(right: 20),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                        onPressed: () {
                                          Get.to(const Notificationn());
                                        },
                                        child: Image(
                                          image: const AssetImage(
                                              'assets/icons/grid.png'),
                                          width: 24.h,
                                          height: 24.h,
                                        ))),
                              ),
                              Container(
                                // padding: EdgeInsets.only(left: 20),
                                margin: const EdgeInsets.only(right: 20),
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
                                margin: const EdgeInsets.only(right: 20),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                        onPressed: () {
                                          Get.to(const Home());
                                        },
                                        child: Image(
                                          image: const AssetImage(
                                              'assets/icons/HomeN.png'),
                                          width: 24.h,
                                          height: 24.h,
                                        ))),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
