import 'package:evenza/hooks/categories_hook.dart';
import 'package:evenza/screens/buffets_screen.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/types_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectTypeBuffet extends HookWidget {
  const SelectTypeBuffet({super.key});

  @override
  Widget build(BuildContext context) {
    final (loading, categories) = useCategories();

    //    useEffect(() {
    //   final ReservationController reservationController =
    //       Get.put(ReservationController());
    //   reservationController.reservation.buffetIds =Map(buffet)=>buffet.id;
    // }, const []);

    return BackGroundWidget(
      title: 'اختر الضيافة',
      onback: () => Get.off('/'),
      content: loading
          ? const BaseLoading(
              color: BaseColors.primary,
            )
          : Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: Column(
                children: categories
                    .map((category) => TypesWidget(
                          title: category.name,
                          imagePath: category.image,
                          ontap: () {
                            Get.to(BuffetsScreen(category: category));
                          },
                        ))
                    .toList(),
              ),
            ),
    );
  }
}


// loading
//           ? Center(
//               child: BaseLoading(
//                 color: BaseColors.primary,
//               ),
//             )
//           : Column(
//               children: [
//                 Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(top: 100.h),
                      // child: Padding(
                      //   padding: EdgeInsets.only(bottom: 10.h),
                      //   child: Container(
                      //     width: 151.66.w,
                      //     height: 144.95.h,
                      //     child: Stack(
                      //       children: [
                      //         Positioned(
                      //           left: 0,
                      //           top: 0,
          //                       child: Container(
          //                         width: 150.32.w,
          //                         height: 144.95.h,
          //                         decoration: ShapeDecoration(
          //                           image: const DecorationImage(
          //                             image: AssetImage(BaseImages.east),
          //                             fit: BoxFit.fill,
          //                           ),
          //                           shape: RoundedRectangleBorder(
          //                             side: BorderSide(
          //                                 width: 1.w, color: Color(0xFF7A7A7A)),
          //                             borderRadius: BorderRadius.circular(14),
          //                           ),
          //                         ),
          //                       ),
          //                     ),
          //                     Positioned(
          //                       left: 1.34.w,
          //                       top: 0.h,
          //                       child: Container(
          //                         width: 150.32.w,
          //                         height: 144.95.h,
          //                         decoration: ShapeDecoration(
          //                           shape: RoundedRectangleBorder(
          //                             side: BorderSide(
          //                                 width: 1.w, color: Color(0xFF7A7A7A)),
          //                             borderRadius: BorderRadius.circular(14.r),
          //                           ),
          //                         ),
          //                       ),
          //                     ),
                              
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          // // SizedBox(
          // //   height: 10.h,
          // // ),
          // Column(
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.only(bottom: 10.h),
          //       child: Container(
          //         width: 151.66.w,
          //         height: 144.95.h,
          //         child: Stack(
          //           children: [
          //             Positioned(
          //               left: 0,
          //               top: 0,
          //               child: Container(
          //                 width: 150.32.w,
          //                 height: 144.95.h,
          //                 decoration: ShapeDecoration(
          //                   image: const DecorationImage(
          //                     image: AssetImage(BaseImages.west),
          //                     fit: BoxFit.fill,
          //                   ),
          //                   shape: RoundedRectangleBorder(
          //                     side: BorderSide(
          //                         width: 1.w, color: Color(0xFF7A7A7A)),
          //                     borderRadius: BorderRadius.circular(14),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 1.34.w,
          //               top: 0.h,
          //               child: Container(
          //                 width: 150.32.w,
          //                 height: 144.95.h,
          //                 decoration: ShapeDecoration(
          //                   shape: RoundedRectangleBorder(
          //                     side: BorderSide(
          //                         width: 1.w, color: Color(0xFF7A7A7A)),
          //                     borderRadius: BorderRadius.circular(14.r),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               left: 0.w,
          //               top: 51.h,
          //               child: SizedBox(
          //                   width: 151.66.w,
          //                   height: 41.61.h,
          //                   child: TextButton(
          //                     onPressed: () {
          //                       Get.to(WestBuffetScreen());
          //                     },
          //                     child: Text(
          //                       'غربي',
          //                       textAlign: TextAlign.center,
          //                       style: TextStyle(
          //                         color: Colors.white,
          //                         fontSize: 14.sp,
          //                         fontFamily: 'Cairo',
          //                         fontWeight: FontWeight.w700,
          //                         height: 0,
          //                         letterSpacing: -0.33.sp,
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 1.34.w,
          //                     top: 0.h,
          //                     child: Container(
          //                       width: 150.32.w,
          //                       height: 144.95.h,
          //                       decoration: ShapeDecoration(
          //                         shape: RoundedRectangleBorder(
          //                           side: BorderSide(
          //                               width: 1.w, color: Color(0xFF7A7A7A)),
          //                           borderRadius: BorderRadius.circular(14.r),
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 0.w,
          //                     top: 51.h,
          //                     child: SizedBox(
          //                         width: 151.66.w,
          //                         height: 41.61.h,
          //                         child: TextButton(
          //                           onPressed: () {
          //                             Get.to(());
          //                           },
          //                           child: Text(
          //                             'غربي',
          //                             textAlign: TextAlign.center,
          //                             style: TextStyle(
          //                               color: Colors.white,
          //                               fontSize: 14.sp,
          //                               fontFamily: 'Cairo',
          //                               fontWeight: FontWeight.w700,
          //                               height: 0,
          //                               letterSpacing: -0.33.sp,
          //                             ),
          //                           ),
          //                         )),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //       // SizedBox(
          //       //   height: 10.h,
          //       // ),
          //       Column(
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.only(bottom: 10.h),
          //             child: Container(
          //               width: 151.66.w,
          //               height: 144.95.h,
          //               child: Stack(
          //                 children: [
          //                   Positioned(
          //                     left: 0,
          //                     top: 0,
          //                     child: Container(
          //                       width: 150.32.w,
          //                       height: 144.95.h,
          //                       decoration: ShapeDecoration(
          //                         image: const DecorationImage(
          //                           image: AssetImage(BaseImages.sweets),
          //                           fit: BoxFit.cover,
          //                         ),
          //                         shape: RoundedRectangleBorder(
          //                           side: BorderSide(
          //                               width: 1.w, color: Color(0xFF7A7A7A)),
          //                           borderRadius: BorderRadius.circular(14),
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 1.34.w,
          //                     top: 0.h,
          //                     child: Container(
          //                       width: 150.32.w,
          //                       height: 144.95.h,
          //                       decoration: ShapeDecoration(
          //                         shape: RoundedRectangleBorder(
          //                           side: BorderSide(
          //                               width: 1.w, color: Color(0xFF7A7A7A)),
          //                           borderRadius: BorderRadius.circular(14.r),
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 0.w,
          //                     top: 51.h,
          //                     child: SizedBox(
          //                         width: 151.66.w,
          //                         height: 41.61.h,
          //                         child: TextButton(
          //                           onPressed: () {
          //                             Get.to(());
          //                           },
          //                           child: Text(
          //                             'حلويات',
          //                             textAlign: TextAlign.center,
          //                             style: TextStyle(
          //                               color: Colors.white,
          //                               fontSize: 14.sp,
          //                               fontFamily: 'Cairo',
          //                               fontWeight: FontWeight.w700,
          //                               height: 0,
          //                               letterSpacing: -0.33.sp,
          //                             ),
          //                           ),
          //                         )),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),