import 'package:evenza/controllers/reservation/reservation_controller.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FinalBroductWidget extends StatelessWidget {
  const FinalBroductWidget(
      {super.key, required this.title, required this.content, this.isReservation = true});
  final String title;
  final Widget content;
  final bool isReservation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(children: [
            Image.asset(
              BaseImages.background,
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 60.h,
              ),
              child: Center(
                  child: ListView(children: [
                // Text(
                //   title,
                //   style: TextStyle(
                //       fontSize: 27.h,
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold),
                //   textAlign: TextAlign.center,
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 100.h, right: 30.h),
                  child: Text(
                    title,
                    style: BaseTextStyles.finalbro,
                  ),
                ),
                content,
                SizedBox(height: 10.h),
                if(isReservation)
                TextButton(
                  onPressed: Get.find<ReservationController>().makeReservation,
                  child: Container(
                    width: 250.73.w,
                    height: 46.h,
                    decoration: ShapeDecoration(
                      color: BaseColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19.r),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'إتمام الحجز',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ])),
            )
          ])),
    );
  }
}
