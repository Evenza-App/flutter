import 'package:evenza/hooks/events_hook.dart';
import 'package:evenza/screens/decoration_screen.dart';
import 'package:evenza/screens/login.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:evenza/widgets/types_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';

class EventTypesScreen extends HookWidget {
  const EventTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (loading, events) = useEvents();
    return BackGroundWidget(
      title: 'التصنيفات',
      onback: () => Get.off(const SelectTypeBuffet()),
      content: Padding(
          padding: EdgeInsets.all(25.h),
          child: loading
              ? BaseLoading(
                  color: BaseColors.primary,
                )
              : GridView.builder(
                  shrinkWrap: true,
                  itemCount: events.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (_, index) {
                    final event = events[index];
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: TypesWidget(
                          imagePath: event.image,
                          ontap: () {
                            Get.to(DecorationScreen(event: event));
                          },
                          title: event.name),
                    );
                  },
                )),
    );
  }
}
