
import 'package:evenza/screens/home2.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Notificationn extends StatelessWidget {
  const Notificationn({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        title: 'الإشعارات',
        onback: () => Get.off(const HomeScreen()),
        content: Padding(
          padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 150.h),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image(
                image: AssetImage('assets/images/notification.png'),
                width: 218,
                height: 203,
              ))
            ],
          ),
        ));
  }
}
