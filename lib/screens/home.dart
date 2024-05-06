import 'package:evenza/controllers/drawer/drawer_controller.dart';
import 'package:evenza/helpers/stripe_helper.dart';
import 'package:evenza/hooks/homes_hook.dart';
import 'package:evenza/screens/lilian_projects.dart';
import 'package:evenza/screens/notification.dart';

import 'package:evenza/screens/setting.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/event_widget.dart';
import 'package:flutter/material.dart' hide DrawerController;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';

class Home extends HookWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final (loading, home) = useHome();
    return Directionality(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.to(const Notificationn());
                          },
                          child: Image(
                            image: const AssetImage(BaseImages.bell),
                            width: 20.h,
                            height: 20.h,
                          )),
                      const DrawerIconWidget(),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 200.w, top: 40.h, bottom: 20.h),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Text(
                          'الإضافات :',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20.w),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(const LilianProjects());
                          },
                          child: Text(
                            'المزيد',
                            style: TextStyle(
                                color: BaseColors.orange, fontSize: 17.w),
                          ))
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: loading
                      ? const BaseLoading(
                          color: BaseColors.primary,
                        )
                      : Row(
                          children: home.latestevents
                              .map(
                                (home) => Padding(
                                  padding: EdgeInsets.only(right: 10.w),
                                  child: EventWidget(
                                    title: '',
                                    date: '',
                                    location: '',
                                    image: home.image,
                                    onNext: () {
                                      StripeHelper.stripe();
                                    },
                                  ),
                                ),
                              )
                              .toList(),
                          // EventWidget(
                          //   title: '',
                          //   date: '',
                          //   location: '',
                          //   image: BaseImages.event1,
                          //   onNext: () {
                          //     Get.to(const Setting());
                          //   },
                          // ),
                          // EventWidget(
                          //   title: '',
                          //   date: '',
                          //   location: '',
                          //   image: BaseImages.event2,
                          //   onNext: () {
                          //     Get.to(const Setting());
                          //   },
                          // ),
                          // EventWidget(
                          //   title: '',
                          //   date: '',
                          //   location: '',
                          //   image: BaseImages.event3,
                          //   onNext: () {
                          //     Get.to(const Setting());
                          //   },
                          // ),
                          // EventWidget(
                          //   title: '',
                          //   date: '',
                          //   location: '',
                          //   image: BaseImages.event4,
                          //   onNext: () {
                          //     Get.to(const Setting());
                          //   },
                          // )
                        ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 32.h),
                        child: Text(
                          'التريندات :',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20.w),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 23.h),
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
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: loading
                        ? const BaseLoading(
                            color: BaseColors.primary,
                          )
                        : Row(
                            children: home.trends
                                .map(
                                  (home) => Padding(
                                    padding: EdgeInsets.only(right: 10.w),
                                    child: EventWidget(
                                      title: '',
                                      date: '',
                                      location: '',
                                      image: home.image,
                                      onNext: () {
                                        Get.to(const Setting());
                                      },
                                    ),
                                  ),
                                )
                                .toList(),
                          )),
              ]),
            ],
          ),
        ]));
  }
}

class DrawerIconWidget extends StatelessWidget {
  const DrawerIconWidget({
    super.key,
  });

  static final DrawerController drawerContoller = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: drawerContoller.openDrawer,
        child: Image(
          image: const AssetImage(BaseImages.menu),
          width: 27.h,
          height: 27.h,
        ));
  }
}
