import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'onboarding_screen2.dart';
import 'package:get/get.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingWidget(
      onNext: () => Get.to(const OnboardingScreen2()),
      imagePath: BaseImages.wedding,
      text: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: ' بعض المناسبات لا تأتي إلا ',
              style: TextStyle(
                color: BaseColors.primaryDark,
                fontSize: 17.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: ' مرة ',
              style: TextStyle(
                color: BaseColors.orange,
                fontSize: 17.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: 'واحدة في ',
              style: TextStyle(
                color: BaseColors.primary,
                fontSize: 17.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: 'العمر\n',
              style: TextStyle(
                color: BaseColors.orange,
                fontSize: 17.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: 'استعد',
              style: TextStyle(
                color: BaseColors.orange,
                fontSize: 17.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: ' معنا لمناسبة',
              style: TextStyle(
                color: BaseColors.primaryDark,
                fontSize: 17.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: ' لا تنسى !!',
              style: TextStyle(
                color: BaseColors.orange,
                fontSize: 17.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
