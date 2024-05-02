import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            BaseImages.cake,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 40),
              height: 276.h,
              decoration: BoxDecoration(
                color: BaseColors.backgroundCard,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "أهلاً وسهلاً بك في",
                    textAlign: TextAlign.center,
                    style: BaseTextStyles.title,
                  ),
                  Text(
                    "EVENZA",
                    textAlign: TextAlign.center,
                    style: BaseTextStyles.evenza,
                  ),
                ],
              ),
              // child: Text('dsajijd'),
            ),
          ),
        ],
      ),
    );
  }
}
