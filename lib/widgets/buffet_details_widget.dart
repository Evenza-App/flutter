import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuffetDetailsWidget extends StatelessWidget {
  const BuffetDetailsWidget({
    super.key,
    required this.imagePath,
    required this.onback,
    required this.title,
    //  required this.onback,
  });
  // final void Function() onback;
  final String imagePath;

  final Widget title;

  final void Function() onback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: Stack(children: [
              const SizedBox(
                height: double.infinity,
              ),
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 500.h,
                width: 400.w,
              ),
              Positioned(
                //bottom: 700.h,
                right: 0,
                left: 0,
                top: 40.h,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                            onPressed: onback,
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              textDirection: TextDirection.ltr,
                              color: Colors.white,
                            ))),
                  ),
                ]),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 450.h,
                    padding: EdgeInsets.only(top: 98.h),
                    decoration: BoxDecoration(
                      color: BaseColors.backgroundCard,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(19.r),
                        topRight: Radius.circular(19.r),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          title,
                          Text(
                            'الأطباق المتوافرة في البوفيه :',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          Text(
                            'الأطباق الرئيسية :',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.33,
                            ),
                          ),
                          Text(
                            'الأطباق الجانبية :',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.33,
                            ),
                          ),
                          Text(
                            'المقبلات :',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.33,
                            ),
                          ),
                          Text(
                            'السعر:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.33,
                            ),
                          ),
                          Text(
                            '30,000000 ل,س',
                            style: TextStyle(
                              color: Color(0xFFFF8C8D),
                              fontSize: 14,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.off(());
                            },
                            child: Container(
                              width: 213,
                              height: 46,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 200.73,
                                    height: 46,
                                    decoration: ShapeDecoration(
                                      color: BaseColors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      'اختيار البوفيه',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ])));
  }
}
