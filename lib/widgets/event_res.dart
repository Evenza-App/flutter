import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/hooks/events_hook.dart';
import 'package:evenza/screens/decoration_screen.dart';
import 'package:evenza/screens/event_types_screen.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EventReservationWidget extends HookWidget {
  const EventReservationWidget(
      {super.key,
      required this.title,
      // required this.content,
      required this.imagebath,
      required this.name,
      required this.content});

  final String title;
  // final Widget content;
  final String imagebath;
  final String name;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    final (loading, events) = useEvents();
    return Scaffold(
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: Stack(children: [
              Image.asset(
                BaseImages.event_res,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Positioned(
                //bottom: 700.h,
                right: 0,
                left: 0,
                top: 40.h,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                            onPressed: () {
                              Get.off(EventTypesScreen());
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              textDirection: TextDirection.ltr,
                            ))),
                  ),
                  Center(
                      child: Column(children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 27.h,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                      child: Container(
                        width: 335.w,
                        height: 201.h,
                        child: Image.asset(imagebath),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.r),
                            color: BaseColors.purple),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10.h, right: 40.h, left: 20.h, bottom: 10.h),
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
                          padding: EdgeInsets.all(10.h),
                          child: Text(
                            name,
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
                    Column(
                      children: [
                        FormFeildWidget(
                          hinttext: 'تاريخ المناسبة',
                          icon: Icon(Icons.date_range_outlined),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 40, left: 2, top: 10, bottom: 10),
                              child: Container(
                                width: 150.w,
                                height: 45.h,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.av_timer_rounded),
                                    iconColor: BaseColors.orange,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: BaseColors.primaryDark),
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: BaseColors.primaryDark),
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
                                    disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: BaseColors.primaryDark),
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red),
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: BaseColors.primaryDark),
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
                                    labelText: 'وقت البدء',
                                    labelStyle: TextStyle(
                                        fontSize: 14.sp,
                                        color:
                                            Color.fromARGB(255, 161, 145, 162)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 2, left: 4, top: 10, bottom: 10),
                              child: Container(
                                width: 150.w,
                                height: 45.h,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.av_timer_sharp),
                                    iconColor: BaseColors.orange,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: BaseColors.primaryDark),
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: BaseColors.primaryDark),
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
                                    disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: BaseColors.primaryDark),
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red),
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: BaseColors.primaryDark),
                                        borderRadius:
                                            BorderRadius.circular(30.r)),
                                    labelText: 'وقت الانتهاء',
                                    labelStyle: TextStyle(
                                        fontSize: 14.sp,
                                        color:
                                            Color.fromARGB(255, 161, 145, 162)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        FormFeildWidget(
                          hinttext: 'عدد الاشخاص',
                          icon: Icon(Icons.people_rounded),
                        ),
                        FormFeildWidget(
                            hinttext: 'رابط موقع المكان',
                            icon: Icon(Icons.location_on_outlined)),
                        SizedBox(
                          height: 10.h,
                        ),
                        content,
                      ],
                    )
                  ])),
                ]),
              )
            ])));
  }
}

class FormFeildWidget extends StatelessWidget {
  const FormFeildWidget({
    super.key,
    required this.hinttext,
    this.keyboardType,
    required this.icon,
  });
  final String hinttext;
  final TextInputType? keyboardType;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300.w,
        height: 50.h,
        child: TextFormField(
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
            icon: icon,
            iconColor: BaseColors.orange,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: BaseColors.primaryDark),
                borderRadius: BorderRadius.circular(30.r)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: BaseColors.primaryDark),
                borderRadius: BorderRadius.circular(30.r)),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: BaseColors.primaryDark),
                borderRadius: BorderRadius.circular(30.r)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(30.r)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: BaseColors.primaryDark),
                borderRadius: BorderRadius.circular(30.r)),
            labelText: hinttext,
            labelStyle: TextStyle(
                fontSize: 14.sp, color: Color.fromARGB(255, 161, 145, 162)),
          ),
        ),
      ),
    );
  }
}
