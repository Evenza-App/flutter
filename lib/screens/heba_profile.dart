import 'package:device_preview/device_preview.dart';
import 'package:evenza/firebase_options.dart';
import 'package:evenza/hooks/photographers_hook.dart';
import 'package:evenza/models/photographer.dart';
import 'package:evenza/screens/heba_projects.dart';
import 'package:evenza/screens/select_photographer.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:google_fonts/google_fonts.dart';


class HebaProfile extends HookWidget {
  const HebaProfile({super.key,required this.photographer});

  final Photographer photographer;

  @override
  Widget build(BuildContext context) {
    final(loading,photographers)=usePhotographer(id: photographer.id);
    return BackGroundWidget(
      title: '',
      onback: () => Get.off( SelectPhotographer(photographer: photographer,)),
      content: 
      loading
      ?BaseLoading(
        color: BaseColors.primary,
      ):
      Padding(
        padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 30.h),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                child: Image.asset(BaseImages.hebaProfile),
              ),
            ),
            Positioned(
                child: Container(
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
                            Get.to(const HebaProjects());
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
                        side: BorderSide(width: 1.w, color: Color(0xFF7A7A7A)),
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
                        side: BorderSide(width: 1.w, color: Color(0xFF7A7A7A)),
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
                        side: BorderSide(width: 1.w, color: Color(0xFF7A7A7A)),
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