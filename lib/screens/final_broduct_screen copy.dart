import 'package:evenza/controllers/auth/singup_controller.dart';
import 'package:evenza/controllers/reservation/reservation_controller.dart';
import 'package:evenza/helpers/stripe_helper.dart';
import 'package:evenza/models/reservation.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/custom_image_widget.dart';
import 'package:evenza/widgets/event_res.dart';
import 'package:evenza/widgets/final_broduct_widget.dart';
import 'package:evenza/widgets/mini_widget.dart';
import 'package:evenza/widgets/text_form_data.dart';
import 'package:evenza/widgets/types_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Payment extends HookWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    final ObjectRef(value: ReservationController(:reservation)) =
        useRef(Get.find<ReservationController>());

    return FinalBroductWidget(
      title: 'ملخص اختياراتك',
      content: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 30.h, right: 40.h, left: 20.h, bottom: 10.h),
                child: Text(
                  'المناسبة:',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 20.h,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, bottom: 10.h),
                child: Text(
                  reservation.event.name,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 20.h,
                      color: BaseColors.primary,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          BaseLoading(),
          Column(
            children: [
              TextFormDataWidget(
                title: 'تاريخ المناسبة',
                data: reservation.date.toDateString(),
                icon: Icon(
                  Icons.date_range_outlined,
                  color: BaseColors.orange,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 32.h,
                ),
                child: Row(
                  children: [
                    TextFormDataWidgetmini(
                        title: 'وقت البدء',
                        icon: Icon(
                          Icons.av_timer_outlined,
                          color: BaseColors.orange,
                        ),
                        data: TimeOfDay.fromDateTime(reservation.startTime)
                            .format(context)),
                    SizedBox(
                      width: 20.h,
                    ),
                    TextFormDataWidgetmini(
                        title: 'وقت الانتهاء',
                        icon: Icon(
                          Icons.av_timer,
                          color: BaseColors.orange,
                        ),
                        data: TimeOfDay.fromDateTime(reservation.endTime)
                            .format(context)),

                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //       right: 2, left: 4, top: 10, bottom: 10),
                    //   child: SizedBox(
                    //     width: 150.w,
                    //     height: 45.h,
                    //     child: TextFormField(
                    //       keyboardType: TextInputType.number,
                    //       decoration: InputDecoration(
                    //         icon: const Icon(Icons.av_timer_sharp),
                    //         iconColor: BaseColors.orange,
                    //         border: OutlineInputBorder(
                    //             borderSide: const BorderSide(
                    //                 color: BaseColors.primaryDark),
                    //             borderRadius: BorderRadius.circular(30.r)),
                    //         focusedBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(
                    //                 color: BaseColors.primaryDark),
                    //             borderRadius: BorderRadius.circular(30.r)),
                    //         disabledBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(
                    //                 color: BaseColors.primaryDark),
                    //             borderRadius: BorderRadius.circular(30.r)),
                    //         errorBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(color: Colors.red),
                    //             borderRadius: BorderRadius.circular(30.r)),
                    //         enabledBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(
                    //                 color: BaseColors.primaryDark),
                    //             borderRadius: BorderRadius.circular(30.r)),
                    //         labelText: 'وقت الانتهاء',
                    //         labelStyle: TextStyle(
                    //             fontSize: 14.sp,
                    //             color: const Color.fromARGB(255, 161, 145, 162)),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
              TextFormDataWidget(
                title: 'عدد الأشخاص',
                data: reservation.numberOfPeople.toString(),
                icon: Icon(
                  Icons.people,
                  color: BaseColors.orange,
                ),
              ),
              TextFormDataWidget(
                title: 'رابط موقع المكان',
                data: reservation.location,
                icon: Icon(
                  Icons.location_on_rounded,
                  color: BaseColors.orange,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              if (reservation.image != null)
                Column(
                  children: [
                    Text('ديكور'),
                    SizedBox(
                      width: 120.66.w,
                      height: 100.61.h,
                      child: ClipRRect(
                        child: Image.file(reservation.image!, fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ],
                ),
              Column(
                children: reservation.details
                    .map(
                      (detail) => TextFormDataWidget(
                        title: detail.keys.first.name,
                        icon: Icon(
                          Icons.location_on_rounded,
                          color: BaseColors.orange,
                        ),
                        data: detail.values.first,
                      ),
                    )
                    .toList(),
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h, right: 20.h),
                      child: Row(
                        children: reservation.buffets
                            .map((buffet) => MiniWidget(
                                  imagePath: buffet.image,
                                  title: buffet.name,
                                  ontap: () {},
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ),
              if (reservation.photographer case final photographer?)
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10.h, right: 20.h, left: 270.h, bottom: 5.h),
                      child: Text(
                        'المصور :',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 18.h),
                      child: ListTile(
                        title: Text(photographer.name),
                        onTap: () {},
                        leading: CircleAvatar(
                            backgroundImage:
                                CustomImageWidget.provider(photographer.image)),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 10.h),
              TextButton(
                onPressed: () {
                  StripeHelper.stripe();
                },
                child: Container(
                  width: 250.73.w,
                  height: 46.h,
                  decoration: ShapeDecoration(
                    color: BaseColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'الرجاء الدفع',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
          // TextField(
          //   decoration: InputDecoration(
          //       label: Text('data'),alignLabelWithHint: true,
          //       isCollapsed: true,
          //       isDense: true,
          //       contentPadding: EdgeInsets.all(20.h),
          //       labelStyle: TextStyle(
          //         color: Colors.black12,
          //       ),
          //       border: OutlineInputBorder()),
          // )
          // TextFormFeildWidget(
          //     hinttext: 'jk', text: Text('jnk'), icon: Icon(Icons.abc))
        ],
      ),
    );
  }
}
