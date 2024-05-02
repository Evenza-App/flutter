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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: Stack(children: [
              Image.asset(
                BaseImages.home,
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
              ),
              Column(
                children: [
                  Column(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 70.h),
                      child: Row(
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
                                      image: const AssetImage(BaseImages.bell),
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
                                      image: const AssetImage(BaseImages.menu),
                                      width: 27.h,
                                      height: 27.h,
                                    ))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 200.w, top: 40.h),
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 200.w, top: 40.h, right: 20.w),
                          child: Text(
                            'الأعمال :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20.w),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h, top: 32.h),
                          child: TextButton(
                              onPressed: () {
                                Get.to(const LilianProjects());
                              },
                              child: Text(
                                'المزيد',
                                style: TextStyle(
                                    color: BaseColors.orange, fontSize: 17.w),
                              )),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          EventWidget(
                            title: ' عيد ميلاد',
                            date: '2020-2-15',
                            location: 'سوريا-دمشق',
                            image: BaseImages.birthevent,
                            onNext: () {
                              Get.to(const Setting());
                            },
                          ),
                          EventWidget(
                            title: '  افتتاح محل',
                            date: '2020-2-15',
                            location: 'سوريا-دمشق',
                            image: BaseImages.reserevent,
                            onNext: () {
                              Get.to(const Setting());
                            },
                          ),
                          EventWidget(
                            title: ' تخرج',
                            date: '2020-2-15',
                            location: 'سوريا-دمشق',
                            image: BaseImages.gradevent,
                            onNext: () {
                              Get.to(const Setting());
                            },
                          ),
                          EventWidget(
                            title: ' خطبة ',
                            date: '2020-2-15',
                            location: 'سوريا-دمشق',
                            image: BaseImages.ingevent,
                            onNext: () {
                              Get.to(const Setting());
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 135.w, top: 40.h, right: 20.w),
                          child: Text(
                            'ماذا يوجد لدينا ؟',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20.w),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h, top: 32.h),
                          child: TextButton(
                              onPressed: () {
                                Get.to(const LilianProjects());
                              },
                              child: Text(
                                'المزيد',
                                style: TextStyle(
                                    color: BaseColors.orange, fontSize: 17.w),
                              )),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          EventWidget(
                            title: '',
                            date: '',
                            location: '',
                            image: BaseImages.event1,
                            onNext: () {
                              Get.to(const Setting());
                            },
                          ),
                          EventWidget(
                            title: '',
                            date: '',
                            location: '',
                            image: BaseImages.event2,
                            onNext: () {
                              Get.to(const Setting());
                            },
                          ),
                          EventWidget(
                            title: '',
                            date: '',
                            location: '',
                            image: BaseImages.event3,
                            onNext: () {
                              Get.to(const Setting());
                            },
                          ),
                          EventWidget(
                            title: '',
                            date: '',
                            location: '',
                            image: BaseImages.event4,
                            onNext: () {
                              Get.to(const Setting());
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 58,
                      margin: EdgeInsets.only(top: 60.w),
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
                                      Get.to(const HomeScreen());
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
                  ]),
                ],
              ),
            ])));
  }
}
