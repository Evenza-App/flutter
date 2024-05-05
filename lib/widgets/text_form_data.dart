import 'package:evenza/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormDataWidget extends StatelessWidget {
  const TextFormDataWidget(
      {super.key, required this.title, required this.icon, required this.data});
  final String title;
  final Widget icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      children: [
        Padding(
          padding: EdgeInsets.only(
              bottom: 10.h, left: 200.h, right: 20.h, top: 10.h),
          child: Text(
            title,
            style: TextStyle(
                color: BaseColors.primaryDark, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 320.w,
          height: 47.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.3.w, color: BaseColors.primaryDark),
              borderRadius: BorderRadius.circular(32.r),
            ),
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: icon,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.h, right: 10.h, bottom: 10),
                    child: Text(data),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TextFormDataWidgetmini extends StatelessWidget {
  const TextFormDataWidgetmini(
      {super.key, required this.title, required this.icon, required this.data});
  final String title;
  final Widget icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10.h, right: 10.h, top: 10.h),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: BaseColors.primaryDark, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 150.w,
            height: 47.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.3.w, color: BaseColors.primaryDark),
                borderRadius: BorderRadius.circular(32.r),
              ),
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(right: 10.h, bottom: 10, top: 10),
                      child: icon,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.h, right: 10.h, bottom: 10),
                      child: Text(data),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
