import 'package:evenza/controllers/reservation/reservation_controller.dart';
import 'package:evenza/hooks/photographers_hook.dart';
import 'package:evenza/models/photographer.dart';
import 'package:evenza/screens/final_broduct_screen.dart';
import 'package:evenza/screens/lilian_projects.dart';
import 'package:evenza/screens/select_photographer.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LilianProfile extends HookWidget {
  const LilianProfile({super.key, required this.photographer});
  final Photographer photographer;
  @override
  Widget build(BuildContext context) {
    final ObjectRef(value: ReservationController reservationController) =
        useRef(Get.find<ReservationController>());
    return BackGroundWidget(
      bottomNavBar: TextButton(
        child: Text('إضافة المصور'),
        onPressed: () {
          reservationController.reservation.photographer = photographer;
          Get.to(FinalBroduct());
        },
      ),
      title: '',
      onback: () => Get.off(SelectPhotographer()),
      content: Padding(
        padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                child: CustomImageWidget(imageUrl: photographer.image),
              ),
            ),
            Positioned(
                child: Container(
              alignment: Alignment.center,
              child: Text(
                photographer.name,
                style: TextStyle(
                  fontSize: 20.h,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            Positioned(
                child: Container(
              padding: EdgeInsets.only(top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(photographer.bio)],
              ),
            )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20.w),
                  child: Text(
                    'الأعمال :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20.w),
                  ),
                ),
              ],
            ),
            Wrap(
              children: photographer.images
                  .map(
                    (image) => Container(
                      padding: EdgeInsets.only(top: 5.w),
                      width: 111.w,
                      height: 152.h,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: CustomImageWidget.provider(image),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1.w, color: const Color(0xFF7A7A7A)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
