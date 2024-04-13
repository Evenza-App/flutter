import 'package:evenza/screens/breakfast_buffet_screen.dart';
import 'package:evenza/screens/dinner_buffet_screen.dart';
import 'package:evenza/screens/east_buffet_screen.dart';
import 'package:evenza/screens/login.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/buffet_details_widget.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';

class DinnerEastPerfect extends StatelessWidget {
  const DinnerEastPerfect({super.key});

  @override
  Widget build(BuildContext context) {
    return BuffetDetailsWidget(
      imagePath: BaseImages.buffetarabicdinnerperfect,
      onback: () {
        Get.off(DinnerBuffetScreen());
      },
      title: Text(
        'عشاء عربي فاخر',
        style: TextStyle(
          color: BaseColors.orange,
          fontSize: 17.sp,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
