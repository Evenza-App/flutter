import 'package:evenza/controllers/reservation/reservation_controller.dart';
import 'package:evenza/hooks/events_hook.dart';
import 'package:evenza/screens/event_types_screen.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/custom_image_widget.dart';
import 'package:evenza/widgets/date_picker_widget.dart';
import 'package:evenza/widgets/time_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EventReservationWidget extends HookWidget {
  const EventReservationWidget({
    super.key,
    required this.title,
    // required this.content,
    required this.imagebath,
    required this.name,
    required this.content,
  });

  final String title;
  // final Widget content;
  final String imagebath;
  final String name;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    final (loading, events) = useEvents();
    final ObjectRef(value: ReservationController reservationController) =
        useRef(Get.find<ReservationController>());
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
                              Get.off(const EventTypesScreen());
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
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.r),
                            color: BaseColors.purple),
                        child: CustomImageWidget(imageUrl: imagebath),
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
                    Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DatePickerWidget(
                            onSaved: (date) => reservationController
                                .reservation.date = DateTime.parse(date!),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 40, left: 2, top: 10, bottom: 10),
                                child: SizedBox(
                                  width: 150.w,
                                  height: 50.h,
                                  child: TimePickerWidget(
                                      text: 'وقت البدء',
                                      onSaved: (time) => reservationController
                                          .reservation.startTime = time!,
                                      validationtext: 'أدخل وقت البدء رجاءا'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 2, left: 4, top: 10, bottom: 10),
                                child: SizedBox(
                                  width: 150.w,
                                  height: 50.h,
                                  child: TimePickerWidget(
                                      text: 'وقت الانتهاء',
                                      onSaved: (time) => reservationController
                                          .reservation.endTime = time!,
                                      validationtext:
                                          'أدخل وقت الانتهاء رجاءا'),
                                ),
                              )
                            ],
                          ),
                          FormFeildWidget(
                            keyboardType: TextInputType.number,
                            onSaved: (number) => reservationController
                                .reservation
                                .numberOfPeople = int.parse(number!),
                            validationText: 'أدخل عدد الأشخاص رجاءا',
                            hinttext: 'عدد الاشخاص',
                            icon: Icon(Icons.people_rounded),
                          ),
                          FormFeildWidget(
                              onSaved: (location) => reservationController
                                  .reservation.location = location!,
                              validationText: 'أدخل رابط موقع المكان رجاءا',
                              hinttext: 'رابط موقع المكان',
                              icon: Icon(Icons.location_on_outlined)),
                          SizedBox(
                            height: 20.h,
                          ),
                          content,
                        ],
                      ),
                    ),
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
    this.initValue,
    required this.icon,
    required this.validationText,
    required this.onSaved,
  });

  final String hinttext;
  final TextInputType? keyboardType;
  final Widget icon;
  final String validationText;
  final String? initValue;
  final void Function(String?) onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 300.w,
        height: 50.h,
        child: TextFormField(
          onSaved: onSaved,
          controller:
              initValue != null ? TextEditingController(text: initValue) : null,
          validator:
              'required'.validate(customMessages: {'required': validationText}),
          keyboardType: keyboardType ?? TextInputType.text,
          readOnly: initValue != null,
          decoration: InputDecoration(
            icon: icon,
            iconColor: BaseColors.orange,
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: BaseColors.primaryDark),
                borderRadius: BorderRadius.circular(30.r)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: BaseColors.primaryDark),
                borderRadius: BorderRadius.circular(30.r)),
            disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: BaseColors.primaryDark),
                borderRadius: BorderRadius.circular(30.r)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(30.r)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: BaseColors.primaryDark),
                borderRadius: BorderRadius.circular(30.r)),
            labelText: hinttext,
            labelStyle: TextStyle(
                fontSize: 14.sp,
                color: const Color.fromARGB(255, 161, 145, 162)),
          ),
        ),
      ),
    );
  }
}
