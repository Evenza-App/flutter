import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiniWidget extends StatelessWidget {
  const MiniWidget({
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
      width: 120.66.w,
      height: 100.61.h,
      margin: EdgeInsets.only(top: 10.h),
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: CustomImageWidget.provider(imagePath),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: const Color(0xFF7A7A7A)),
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
