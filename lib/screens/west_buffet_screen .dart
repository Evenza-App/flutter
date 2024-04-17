import 'package:evenza/models/category.dart';
import 'package:evenza/screens/break_east_perfect.dart';
import 'package:evenza/screens/break_west_perfect.dart';
import 'package:evenza/screens/breakfast_buffet_screen.dart';
import 'package:evenza/screens/breakfast_buffet_west_screen%20.dart';
import 'package:evenza/screens/dinner_buffet_screen.dart';
import 'package:evenza/screens/dinner_buffet_west_screen%20.dart';
import 'package:evenza/screens/dinner_west_mix.dart';
import 'package:evenza/screens/dinner_west_mod.dart';
import 'package:evenza/screens/dinner_west_perfect.dart';
import 'package:evenza/screens/login.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/buffet_widget.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';

class WestBuffetScreen extends StatelessWidget {
  const WestBuffetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        title: 'غربي',
        onback: () => Get.off(const SelectTypeBuffet()),
        content: Padding(
            padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 30.h),
            child: Column(
              children: [
                Container(
                  width: 335.w,
                  height: 48.h,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 335.w,
                          height: 48.h,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1.w, color: Color(0xEDFFB183)),
                              borderRadius: BorderRadius.circular(14.r),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(2, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 9.w,
                        top: 6.w,
                        child: Container(
                          width: 36.w,
                          height: 36.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(BaseImages.plate),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 262.w,
                        top: 16.w,
                        child: SizedBox(
                          width: 69.w,
                          height: 24.h,
                          child: Text(
                            'ابحث هنا',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 18.h, bottom: 10.h),
                      child: Text(
                        'مقترحات',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.h,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                BuffetWidget(
                    ontap: () => Get.off(BreakEastPerfect()),
                    title: 'فطور عربي ',
                    price: '3000000',
                    name: 'فطور عربي فاخر',
                    image: BaseImages.buffetarabicperfect)
              ],
            )));
  }
}
