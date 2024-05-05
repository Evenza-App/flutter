import 'package:evenza/hooks/photographers_hook.dart';
import 'package:evenza/models/photographer.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/screens/lilian_profile.dart';
import 'package:evenza/screens/saher_profile.dart';
import 'package:evenza/screens/heba_profile.dart';
import 'package:evenza/screens/saeed_profile.dart';

class SelectPhotographer extends HookWidget {
  const SelectPhotographer({super.key, required this.photographer});
  final Photographer photographer;
  @override
  Widget build(BuildContext context) {
    final (loading, photographers) = usePhotographer(id: photographer.id);
    return BackGroundWidget(
      title: 'اختر المصور',
      onback: () => Get.off(const SelectTypeBuffet()),
      content: Padding(
        padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 30.h),
        child: Column(children: [
          SizedBox(
            width: 335.w,
            height: 48.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 335.w,
                    height: 48.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.w, color: BaseColors.primary),
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(2, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 18.w,
                  top: 12.w,
                  child: Container(
                    width: 25.w,
                    height: 25.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(BaseImages.search),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 262.w,
                  top: 16.w,
                  child: SizedBox(
                    width: 69.w,
                    height: 24.h,
                    child: Text(
                      'ابحث هنا',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFFBEBEBE),
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              child: SizedBox(
            height: 550.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: const Text("ليليان وهبي"),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/lilian.png'),
                    ),
                    onTap: () {
                      Get.to(LilianProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text('سعيد مصلح'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/saeed.png'),
                    ),
                    onTap: () {
                      Get.to(SaeedProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text('هبة جويد'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/heba.png'),
                    ),
                    onTap: () {
                      Get.to(HebaProfile(photographer: photographer));
                    },
                  ),
                  ListTile(
                    title: const Text('ساهر سويدان'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/saher.png'),
                    ),
                    onTap: () {
                      Get.to(SaherProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text('ساهر سويدان'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/saher.png'),
                    ),
                    onTap: () {
                      Get.to(SaherProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text('ساهر سويدان'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/saher.png'),
                    ),
                    onTap: () {
                      Get.to(SaherProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text('ساهر سويدان'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/saher.png'),
                    ),
                    onTap: () {
                      Get.to(SaherProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text('ساهر سويدان'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/saher.png'),
                    ),
                    onTap: () {
                      Get.to(SaherProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text('ساهر سويدان'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/saher.png'),
                    ),
                    onTap: () {
                      Get.to(SaherProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text('ساهر سويدان'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/saher.png'),
                    ),
                    onTap: () {
                      Get.to(SaherProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text('ساهر سويدان'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/saher.png'),
                    ),
                    onTap: () {
                      Get.to(SaherProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text('ساهر سويدان'),
                    subtitle: const Text('تصوير جميع المناسبات'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.h,
                    ),
                    leading: CircleAvatar(
                      child: Image.asset('assets/photographers/saher.png'),
                    ),
                    onTap: () {
                      Get.to(SaherProfile(
                        photographer: photographer,
                      ));
                    },
                  ),
                ],
              ),
            ),
          )),
        ]),
      ),
    );

    //appBar: AppBar(
    //  title: const Text('اختر المصور'),
    // leading:
    //    IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
    // ),
    //     Directionality(
    //   textDirection: TextDirection.rtl,
    //   child: Stack(
    //     children: [
    //       Image.asset(
    //         BaseImages.backgroundarab,
    //         fit: BoxFit.cover,
    //         height: double.infinity,
    //         width: double.infinity,
    //       ),
    //       Positioned(
    //         left: 0,
    //         top: 200.h,
    //         child: Container(
    //           width: 335.w,
    //           height: 48.h,
    //           decoration: ShapeDecoration(
    //             color: Colors.white,
    //             shape: RoundedRectangleBorder(
    //               side:
    //                   BorderSide(width: 1.w, color: const Color(0xEDFFB183)),
    //               borderRadius: BorderRadius.circular(14.r),
    //             ),
    //             shadows: const [
    //               BoxShadow(
    //                 color: Color(0x3F000000),
    //                 blurRadius: 4,
    //                 offset: Offset(2, 2),
    //                 spreadRadius: 0,
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //       Positioned(
    //         left: 9.w,
    //         top: 6.w,
    //         child: Container(
    //           width: 36.w,
    //           height: 36.h,
    //           decoration: const BoxDecoration(
    //             image: DecorationImage(
    //               image: AssetImage(BaseImages.plate),
    //               fit: BoxFit.fill,
    //             ),
    //           ),
    //         ),
    //       ),
    //       Positioned(
    //         left: 262.w,
    //         top: 16.w,
    //         child: SizedBox(
    //           width: 69.w,
    //           height: 24.h,
    //           child: Text(
    //             'ابحث هنا',
    //             textAlign: TextAlign.center,
    //             style: TextStyle(
    //               color: const Color(0xFFBEBEBE),
    //               fontSize: 12.sp,
    //               fontFamily: 'Inter',
    //               fontWeight: FontWeight.w400,
    //             ),
    //           ),
    //         ),
    //       ),
    //       ListView(
    //         children: [
    //           // Container(
    //           //   color: colo,
    //           // )
    //           ListTile(
    //             title: const Text("ليليان وهبي"),
    //             subtitle: const Text('تصوير جميع المناسبات'),
    //             trailing: const Icon(Icons.arrow_back),
    //             leading: CircleAvatar(
    //               child: Image.asset('assets/photographers/lilian.png'),
    //             ),
    //           ),
    //           ListTile(
    //             title: const Text('سعيد مصلح'),
    //             subtitle: const Text('تصوير جميع المناسبات'),
    //             trailing: const Icon(Icons.arrow_back),
    //             leading: CircleAvatar(
    //               child: Image.asset('assets/photographers/saeed.png'),
    //             ),
    //           ),
    //           ListTile(
    //             title: const Text('هبة جويد'),
    //             subtitle: const Text('تصوير جميع المناسبات'),
    //             trailing: const Icon(Icons.arrow_back),
    //             leading: CircleAvatar(
    //               child: Image.asset('assets/photographers/heba.png'),
    //             ),
    //           ),
    //           ListTile(
    //             title: const Text('ساهر سويدان'),
    //             subtitle: const Text('تصوير جميع المناسبات'),
    //             trailing: const Icon(Icons.arrow_back),
    //             leading: CircleAvatar(
    //               child: Image.asset('assets/photographers/saher.png'),
    //             ),
    //           )
    //         ],
    //       ),
    //     ],
    //   ),
    // ),
    //);
  }
}
