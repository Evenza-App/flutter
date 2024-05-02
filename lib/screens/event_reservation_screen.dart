import 'package:evenza/hooks/events_details_hook.dart';
import 'package:evenza/models/event.dart';
import 'package:evenza/screens/decoration_screen.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/event_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/reservation/reservation_controller.dart';

class EventReservationScreen extends HookWidget {
  const EventReservationScreen({super.key, required this.event});

  final Event event;
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final ReservationController reservationController =
          Get.put(ReservationController());
      reservationController.reservation.eventId = event.id;
    }, const []);

    return EventReservationWidget(
      title: event.name,
      imagebath: event.image,
      name: event.name,
      content: TextButton(
        onPressed: () {
          Get.to(DecorationScreen(event: event));
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
