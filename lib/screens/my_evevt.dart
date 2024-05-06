import 'package:evenza/hooks/my_events_hook.dart';
import 'package:evenza/screens/home.dart';
import 'package:evenza/screens/my_event_details_screen.dart';
import 'package:evenza/screens/notification.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyEvent extends HookWidget {
  const MyEvent({super.key});

  @override
  Widget build(BuildContext context) {
    final (loading, myEvents) = useMyEvents();
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
                                child: loading
                                    ? Center(
                                        child: BaseLoading(
                                          color: BaseColors.primary,
                                        ),
                                      )
                                    : SingleChildScrollView(
                                        child: Column(
                                          children: myEvents
                                              .map((myEvent) => TextButton(
                                                    onPressed: () {
                                                      Get.to(
                                                          MyEventDetailsScreen(
                                                              id: myEvent.id));
                                                    },
                                                    child: MyEventCard(
                                                      address: myEvent.location,
                                                      date: myEvent.date,
                                                      image: myEvent.eventImage,
                                                      name: myEvent.eventName,
                                                    ),
                                                  ))
                                              .toList(),
                                        ),
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

class MyEventCard extends StatelessWidget {
  const MyEventCard({
    super.key,
    required this.image,
    required this.name,
    required this.address,
    required this.date,
  });

  final String image;

  final String name;

  final String address;

  final String date;

  @override
  Widget build(BuildContext context) {
    print(image);
    return Container(
      padding: EdgeInsets.only(top: 5.w),
      width: 308.w,
      height: 157.h,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: CustomImageWidget.provider(image),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: const Color(0xFF7A7A7A)),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 37, right: 140, left: 44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(color: Colors.white),
                ),
                Text(address, style: TextStyle(color: Colors.white)),
                Text(date, style: TextStyle(color: Colors.white)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
