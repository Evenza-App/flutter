import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({
    super.key,
    required this.title,
    required this.date,
    required this.location,
    required this.image,
    required this.onNext,
  });
  final String title;
  final String date;
  final String location;
  final String image;
  final void Function() onNext;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.w),
      width: 266.w,
      height: 130.h,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(image, headers: ApiHelper.ngrokHeaders),
          // image: AssetImage('assets/projects/project2.png'),
          fit: BoxFit.cover,
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
            Container(
              padding: EdgeInsets.only(top: 23.h, right: 115.w, left: 44.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(location, style: const TextStyle(color: Colors.white)),
                  Text(date, style: const TextStyle(color: Colors.white)),
                ],
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
                  onTap: onNext,
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
    );
  }
}
