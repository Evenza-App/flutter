import 'package:evenza/hooks/photographers_hook.dart';
import 'package:evenza/models/photographer.dart';
import 'package:evenza/screens/saher_projects.dart';
import 'package:evenza/screens/select_photographer.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SaherProfile extends StatelessWidget {
  const SaherProfile({super.key, required this.photographer});
  final Photographer photographer;
  @override
  Widget build(BuildContext context) {
    final (loading, photographers) = usePhotographer();
    return BackGroundWidget(
      title: '',
      onback: () => Get.off(SelectPhotographer()),
      content: Padding(
        padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 30.h),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                child: Image.asset(BaseImages.saherProfile),
              ),
            ),
            Positioned(
                child: Container(
              child: Text(
                'ساهر سويدان',
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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('تصوير جميع المناسبات'),
                  Text('مع توافر جميع الاكسسوارات')
                ],
              ),
            )),
            Positioned(
                child: Container(
              child: Row(
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
                  Container(
                      padding: EdgeInsets.only(top: 22.w, right: 225),
                      child: TextButton(
                          onPressed: () {
                            Get.to(const SaherProjects());
                          },
                          child: Text(
                            'المزيد',
                            style: TextStyle(
                                color: BaseColors.orange, fontSize: 17.w),
                          )))
                ],
              ),
            )),
            Positioned(
                child: Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5.w),
                    width: 111.w,
                    height: 152.h,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/photographers/lilian_project1.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1.w, color: const Color(0xFF7A7A7A)),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.w, right: 5.w),
                    width: 111.w,
                    height: 152.h,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/photographers/lilian_project2.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1.w, color: const Color(0xFF7A7A7A)),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.w, right: 20),
                    width: 111.w,
                    height: 152.h,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/photographers/lilian_project3.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1.w, color: const Color(0xFF7A7A7A)),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
