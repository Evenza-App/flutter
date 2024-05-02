import 'package:evenza/screens/onboarding_screen1.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingWidget(
      onNext: () => Get.to(const OnboardingScreen1()),
      imagePath: BaseImages.birthday,
      text: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'للعد التنازلي لمناسبة\n لن ترغب ',
              style: TextStyle(
                color: BaseColors.primaryDark,
                fontSize: 19.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            TextSpan(
              text: 'في تفويتها ',
              style: TextStyle(
                color: BaseColors.orange,
                fontSize: 19.h,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
