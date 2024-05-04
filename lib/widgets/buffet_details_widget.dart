import 'package:evenza/controllers/reservation/reservation_controller.dart';
import 'package:evenza/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuffetDetailsWidget extends StatelessWidget {
  const BuffetDetailsWidget(
      {super.key,
      required this.imagePath,
      required this.onback,
      required this.title,
      required this.price,
      required this.ingredient,
      //  required this.onback,
      required this.id});
  final int id;
  // final void Function() onback;
  final String imagePath;
  final String price;
  final String ingredient;
  final String title;

  final void Function() onback;

  @override
  Widget build(BuildContext context) {
    final ObjectRef(value: ReservationController reservationController) =
        useRef(Get.find<ReservationController>());

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
// <<<<<<< HEAD
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         width: 500,
//                         height: 460,
//                         child: Stack(
//                           children: [
//                             Positioned(
//                               left: 0,
//                               top: 0,
//                               child: Container(
//                                 width: 500,
//                                 height: 460,
//                                 decoration: ShapeDecoration(
//                                   color: const Color(0xFFFFF1EE),
//                                   shape: RoundedRectangleBorder(
//                                     side: BorderSide(
//                                       width: 1,
//                                       color: Colors.black
//                                           .withOpacity(0.2800000011920929),
//                                     ),
//                                     borderRadius: const BorderRadius.only(
//                                       topLeft: Radius.circular(15),
//                                       topRight: Radius.circular(15),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const Positioned(
//                               left: 145,
//                               top: 28,
//                               child: SizedBox(
//                                 child: Text(
//                                   'فطور عربي ',
//                                   style: TextStyle(
//                                     color: Color(0xEDFFB183),
//                                     fontSize: 17,
//                                     fontFamily: 'Cairo',
//                                     fontWeight: FontWeight.w700,
//                                     height: 0,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const Positioned(
//                               left: 164,
//                               top: 107,
//                               child: Text(
//                                 'الأطباق المتوافرة في البوفيه :',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 15,
//                                   fontFamily: 'Cairo',
//                                   fontWeight: FontWeight.w600,
//                                   height: 0,
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               left: 281,
//                               top: 260,
//                               child: Padding(
//                                 padding: EdgeInsets.only(left: 10.h),
//                                 child: const SizedBox(
//                                   child: Text(
//                                     'السعر:',
//                                     textAlign: TextAlign.left,
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 15,
//                                       fontFamily: 'Cairo',
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const Positioned(
//                               left: 253,
//                               top: 290,
//                               child: SizedBox(
//                                 child: Text(
//                                   '30,000000 ل,س',
//                                   style: TextStyle(
//                                     color: Color(0xFFFF8C8D),
//                                     fontSize: 14,
//                                     fontFamily: 'Cairo',
//                                     fontWeight: FontWeight.w700,
//                                     height: 0,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               left: 81,
//                               top: 381,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(10),
//                                 child: SizedBox(
//                                   width: 213,
//                                   height: 46,
//                                   child: Stack(
//                                     children: [
//                                       Positioned(
//                                         left: 12.27,
//                                         top: 0,
//                                         child: Container(
//                                           width: 200.73,
//                                           height: 46,
//                                           decoration: ShapeDecoration(
//                                             color: const Color(0xEDFFB183),
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(19),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       const Positioned(
//                                         left: 27.99,
//                                         top: 4,
//                                         child: SizedBox(
//                                           width: 159.45,
//                                           child: Text(
//                                             'اختيار البوفيه',
//                                             textAlign: TextAlign.center,
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16,
//                                               fontFamily: 'Poppins',
//                                               fontWeight: FontWeight.w500,
//                                               height: 0,
//                                               letterSpacing: -0.33,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const Positioned(
//                               left: 249,
//                               top: 142,
//                               child: Text(
//                                 'الأطباق الرئيسية :',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 13,
//                                   fontFamily: 'Cairo',
//                                   fontWeight: FontWeight.w600,
//                                   height: 0,
//                                 ),
//                               ),
//                             ),
//                             const Positioned(
//                               left: 253,
//                               top: 176,
//                               child: Text(
//                                 'الأطباق الجانبية :',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 13,
//                                   fontFamily: 'Cairo',
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ),
//                             const Positioned(
//                               left: 287,
//                               top: 208,
//                               child: Text(
//                                 'المقبلات :',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 13,
//                                   fontFamily: 'Cairo',
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
// =======
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
                          Text(
                            title,
                            style: TextStyle(
                              color: const Color(0xEDFFB183),
                              fontSize: 17.sp,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'الأطباق المتوافرة في البوفيه :',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          Text(
                            ingredient,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.33,
                            ),
                          ),
                          // Text(
                          //   'الأطباق الجانبية :',
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 13,
                          //     fontFamily: 'Cairo',
                          //     fontWeight: FontWeight.w600,
                          //     height: 0,
                          //     letterSpacing: -0.33,
                          //   ),
                          // ),
                          // Text(
                          //   'المقبلات :',
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 13,
                          //     fontFamily: 'Cairo',
                          //     fontWeight: FontWeight.w600,
                          //     height: 0,
                          //     letterSpacing: -0.33,
                          //   ),
                          // ),
                          Text(
                            'السعر:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              // height: 0,
                              // letterSpacing: -0.33,
                            ),
                          ),
                          Text(
                            price,
                            style: TextStyle(
                              color: const Color(0xFFFF8C8D),
                              fontSize: 14.sp,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              reservationController.reservation.buffetIds
                                  .add(id);
                              Get.off(());
                            },
                            child: SizedBox(
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
                                        fontSize: 16.sp,
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
