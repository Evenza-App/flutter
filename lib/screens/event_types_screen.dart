import 'package:evenza/hooks/events_hook.dart';
import 'package:evenza/screens/event_reservation_screen.dart';
import 'package:evenza/screens/home.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/types_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EventTypesScreen extends HookWidget {
  const EventTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (loading, events) = useEvents();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
          Image.asset(
            BaseImages.backgroundarab,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            //bottom: 700.h,
            right: 0,
            left: 0,
            top: 40.h,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child:DrawerIconWidget()),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'التصنيفات',
                        style: TextStyle(
                            fontSize: 27.h,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                          padding: EdgeInsets.all(25.h),
                          child: loading
                              ? const BaseLoading(
                                  color: BaseColors.primary,
                                )
                              : GridView.builder(
                                  shrinkWrap: true,
                                  itemCount: events.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2),
                                  itemBuilder: (_, index) {
                                    final event = events[index];
                                    return Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: TypesWidget(
                                          imagePath: event.image,
                                          ontap: () {
                                            Get.to(EventReservationScreen(
                                                event: event));
                                          },
                                          title: event.name),
                                    );
                                  },
                                )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
