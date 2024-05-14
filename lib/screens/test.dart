import 'dart:ui';

import 'package:evenza/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 5.w),
          width: 266.w,
          height: 130.h,
          decoration: ShapeDecoration(
            image: DecorationImage(
              // image: CustomImageWidget.provider(image),
             image: AssetImage('assetName'),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              //   side: BorderSide(width: 1.w, color: Color(0xFF7A7A7A)),
              borderRadius: BorderRadius.circular(14.r),
            ),
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 600.0, sigmaY: 1000.0),
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 23.h, right: 115.w, left: 44.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'title',
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text('location',
                            style: const TextStyle(color: Colors.white)),
                        Text('date',
                            style: const TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 40.w,
                  height: 20.h,
                  margin: EdgeInsets.only(top: 5.h, right: 210.w, left: 10.w),
                  decoration: BoxDecoration(
                    color: BaseColors.primary,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'إنشاء',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 8.sp,
                          color: BaseColors.backgroundCard,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 130.w,
          height: 60.h,
          decoration: ShapeDecoration(
            image: DecorationImage(
              // image: CustomImageWidget.provider(image),
              image: AssetImage('assets/projects/project2.png'),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              //   side: BorderSide(width: 1.w, color: Color(0xFF7A7A7A)),
              borderRadius: BorderRadius.circular(14.r),
            ),
          ),
        )
      ],
    );
  }
}
