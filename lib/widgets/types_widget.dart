import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TypesWidget extends StatelessWidget {
  const TypesWidget({
    super.key,
    required this.imagePath,
    required this.ontap,
    required this.title,
    //  required this.onback,
  });
  // final void Function() onback;
  final String imagePath;

  final String title;

  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 153.66.w,
      height: 144.61.h,
      margin: EdgeInsets.only(top: 10.h),
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(imagePath, headers: ApiHelper.ngrokHeaders),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: Color(0xFF7A7A7A)),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: TextButton(
        onPressed: ontap,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}