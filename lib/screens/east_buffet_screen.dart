import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EastBuffetScreen extends StatelessWidget {
  const EastBuffetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
        title: 'شرقي',
        onback: () => Get.off(const SelectTypeBuffet()),
        content: Padding(
            padding: EdgeInsets.only(left: 10.h, right: 15.h, top: 30.h),
            child: Column(
              children: [
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
                              side: BorderSide(
                                  width: 1.w, color: const Color(0xEDFFB183)),
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
                        left: 9.w,
                        top: 6.w,
                        child: Container(
                          width: 36.w,
                          height: 36.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(BaseImages.plate),
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
                Padding(
                  padding: EdgeInsets.only(
                      left: 40.h, right: 40.h, bottom: 20.h, top: 40.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h,
                                        right: 10.h,
                                        top: 10.h,
                                        bottom: 10.h),
                                    child: Container(
                                      width: 112.w,
                                      height: 108.h,
                                      decoration: ShapeDecoration(
                                        image: const DecorationImage(
                                          image:
                                              AssetImage(BaseImages.breakfast),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1.w,
                                              color: const Color(0xFF7A7A7A)),
                                          borderRadius:
                                              BorderRadius.circular(14.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0.w,
                                    top: 40.h,
                                    child: SizedBox(
                                        width: 140.66.w,
                                        height: 41.61.h,
                                        child: TextButton(
                                          onPressed: () {
                                            Get.to(const EastBuffetScreen());
                                          },
                                          child: Text(
                                            'الأطباق',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                              letterSpacing: -0.33.sp,
                                            ),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h,
                                        right: 10.h,
                                        top: 10.h,
                                        bottom: 10.h),
                                    child: Container(
                                      width: 112.w,
                                      height: 108.h,
                                      decoration: ShapeDecoration(
                                        image: const DecorationImage(
                                          image:
                                              AssetImage(BaseImages.arabsweet),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1.w,
                                              color: const Color(0xFF7A7A7A)),
                                          borderRadius:
                                              BorderRadius.circular(14.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0.w,
                                    top: 40.h,
                                    child: SizedBox(
                                        width: 140.66.w,
                                        height: 41.61.h,
                                        child: TextButton(
                                          onPressed: () {
                                            Get.to(const EastBuffetScreen());
                                          },
                                          child: Text(
                                            'الحلويات',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 18.h, bottom: 10.h),
                      child: Text(
                        'مقترحات',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.h,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    height: 400.h,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
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
                                              color: Colors.black.withOpacity(
                                                  0.2800000011920929),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(9.r),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 71,
                                      top: 188,
                                      child: Text(
                                        'بوفيه حلويات  ملكي',
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
                                    Positioned(
                                      top: 40.h,
                                      left: 10.h,
                                      right: 10.h,
                                      child: Center(
                                        child: Container(
                                          width: 236.w,
                                          height: 140.h,
                                          decoration: ShapeDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  BaseImages.swearab1),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(9.r)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 80.h,
                                      top: 213.h,
                                      child: Text(
                                        '30,000000 ل,س',
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 45.83.w,
                                              height: 25.h,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                        width: 45.83.w,
                                                        height: 25.h,
                                                        //  child:TextButton.icon(onPressed: , icon: Icons.)
                                                        decoration:
                                                            const BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  BaseImages
                                                                      .like)),
                                                        )),
                                                  ),
                                                  const Positioned(
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
                                      child: SizedBox(
                                        width: 79.w,
                                        height: 25.h,
                                        child: Text(
                                          'بوفيه حلويات  ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20.h),
                                child: SizedBox(
                                  width: 264,
                                  height: 248,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 264,
                                          height: 248,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFFF1EE),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                color: Colors.black.withOpacity(
                                                    0.2800000011920929),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(9.r),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 71,
                                        top: 188,
                                        child: Text(
                                          'بوفيه حلويات  ملكي',
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
                                      Positioned(
                                        top: 40.h,
                                        left: 10.h,
                                        right: 10.h,
                                        child: Center(
                                          child: Container(
                                            width: 236.w,
                                            height: 140.h,
                                            decoration: ShapeDecoration(
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                    BaseImages.swearab1),
                                                fit: BoxFit.fill,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          9.r)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 80.h,
                                        top: 213.h,
                                        child: Text(
                                          '30,000000 ل,س',
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 45.83.w,
                                                height: 25.h,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                          width: 45.83.w,
                                                          height: 25.h,
                                                          //  child:TextButton.icon(onPressed: , icon: Icons.)
                                                          decoration:
                                                              const BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    BaseImages
                                                                        .like)),
                                                          )),
                                                    ),
                                                    const Positioned(
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
                                        child: SizedBox(
                                          width: 79.w,
                                          height: 25.h,
                                          child: Text(
                                            'بوفيه حلويات  ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            )));
  }
}
