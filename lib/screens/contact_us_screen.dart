import 'package:evenza/screens/home.dart';
import 'package:evenza/screens/home2.dart';
import 'package:evenza/screens/setting.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(children: [
          Image.asset(
            'assets/images/ContactUs.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ]));
  }
}
