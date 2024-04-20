import 'package:evenza/hooks/events_details_hook.dart';
import 'package:evenza/hooks/events_hook.dart';
import 'package:evenza/models/event.dart';
import 'package:evenza/screens/decoration_screen.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/event_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EventReservationScreen extends HookWidget {
  const EventReservationScreen({super.key, required this.event});
  final Event event;
  @override
  Widget build(BuildContext context) {
    final (loading, events) = useEventDetails(id: this.event.id);

    return EventReservationWidget(
      title: this.event.name,
      imagebath: this.event.image,
      name: this.event.name,
      content: TextButton(
        onPressed: () {
          loading
              ? BaseLoading(
                  color: BaseColors.primary,
                )
              : Get.off(DecorationScreen(event: event));
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
              'المرحلة التالية',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
