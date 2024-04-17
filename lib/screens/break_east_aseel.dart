import 'package:evenza/screens/breakfast_buffet_screen.dart';
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

class BreakEastAseel extends StatelessWidget {
  const BreakEastAseel({super.key});

  @override
  Widget build(BuildContext context) {
    return BuffetDetailsWidget(
      imagePath: BaseImages.buffetarabicaseel,
      onback: () {
        Get.off(BreakfastBuffetScreen());
      },
      title: Text(
        'فطور عربي أصيل',
        style: TextStyle(
          color: Color(0xEDFFB183),
          fontSize: 17,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}