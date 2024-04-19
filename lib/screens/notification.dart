import 'package:device_preview/device_preview.dart';
import 'package:evenza/firebase_options.dart';
import 'package:evenza/screens/home.dart';
import 'package:evenza/screens/lilian_projects.dart';
import 'package:evenza/screens/select_photographer.dart';
import 'package:evenza/screens/setting.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:google_fonts/google_fonts.dart';

class Notificationn extends StatelessWidget {
  const Notificationn({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        title: 'الإشعارات',
        onback: () => Get.off(const Home()),
        content: Padding(
          padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 150.h),
          child: Column(
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
