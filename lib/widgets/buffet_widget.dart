import 'package:evenza/helpers/api/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_image_widget.dart';

class BuffetWidget extends StatelessWidget {
  const BuffetWidget({
    super.key,
    required this.ontap,
    required this.title,
    required this.price,
    required this.name,
    required this.image,
  });
  final Function() ontap;
  final String title;
  final String price;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      child: SizedBox(
        width: 264.w,
        height: 248.h,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 264.w,
                height: 248.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFF1EE),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.w,
                      color: Colors.black.withOpacity(0.2800000011920929),
                    ),
                    borderRadius: BorderRadius.circular(9.r),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 88,
              top: 200,
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.h,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              top: 40.h,
              left: 10.h,
              right: 10.h,
              child: Center(
                child: Container(
                  width: 236.w,
                  height: 140.h,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: CustomImageWidget.provider(image),
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.r)),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 70.h,
              top: 213.h,
              child: Text(
                price,
                style: TextStyle(
                  color: const Color(0xFFFF8C8D),
                  fontSize: 14.sp,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 215.h,
              top: 162.h,
              child: SizedBox(
                width: 45.83.w,
                height: 25.h,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 45.83.w,
                      height: 25.h,
                      child: const Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 1.94,
                            child: SizedBox(
                              width: 49.40,
                              height: 23.06,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 93.h,
              top: 12.h,
              bottom: 12.h,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
