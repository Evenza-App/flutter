import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuffetDetailsWidget extends StatelessWidget {
  const BuffetDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: Stack(children: [
              Image.asset(
                BaseImages.swearab1,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        height: 460,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 500,
                                height: 460,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFFF1EE),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.black
                                          .withOpacity(0.2800000011920929),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 145,
                              top: 28,
                              child: SizedBox(
                                child: Text(
                                  'فطور عربي ',
                                  style: TextStyle(
                                    color: Color(0xEDFFB183),
                                    fontSize: 17,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 164,
                              top: 107,
                              child: Text(
                                'الأطباق المتوافرة في البوفيه :',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 281,
                              top: 260,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: SizedBox(
                                  child: Text(
                                    'السعر:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 253,
                              top: 290,
                              child: SizedBox(
                                child: Text(
                                  '30,000000 ل,س',
                                  style: TextStyle(
                                    color: Color(0xFFFF8C8D),
                                    fontSize: 14,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 81,
                              top: 381,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  width: 213,
                                  height: 46,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 12.27,
                                        top: 0,
                                        child: Container(
                                          width: 200.73,
                                          height: 46,
                                          decoration: ShapeDecoration(
                                            color: Color(0xEDFFB183),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(19),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 27.99,
                                        top: 4,
                                        child: SizedBox(
                                          width: 159.45,
                                          child: Text(
                                            'اختيار البوفيه',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                              letterSpacing: -0.33,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 249,
                              top: 142,
                              child: Text(
                                'الأطباق الرئيسية :',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 253,
                              top: 176,
                              child: Text(
                                'الأطباق الجانبية :',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 287,
                              top: 208,
                              child: Text(
                                'المقبلات :',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                  // Container(
                  //   height: 600.h,
                  //   margin: EdgeInsets.only(top: 20.h),
                  //   padding: EdgeInsets.only(top: 98.h),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(50.r),
                  //       topRight: Radius.circular(50.r),
                  //     ),
                  //   ),
                  //   child: Padding(
                  //     padding: EdgeInsets.only(
                  //       left: 18.h,
                  //       right: 18.h,
                  //     ),
                  //   ),
                  // )
                  )
            ])));
  }
}
