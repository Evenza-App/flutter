import 'package:evenza/helpers/stripe_helper.dart';
import 'package:evenza/hooks/events_details_hook.dart';
import 'package:evenza/models/event.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/decoration_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';
import 'package:get/get.dart';

import '../controllers/reservation/reservation_controller.dart';

class DecorationScreen extends HookWidget {
  const DecorationScreen({super.key, required this.event});

  final Event event;
  @override
  Widget build(BuildContext context) {
    final (loading, event) = useEventDetails(id: this.event.id);
    final ObjectRef(value: ReservationController reservationController) =
        useRef(Get.find<ReservationController>());

    return DecorationWidget(
      title: this.event.name,
      imagePath: BaseImages.decorbirth,
      onChooseImage: (image) {
        reservationController.reservation.image = image;
      },
      content: Padding(
        padding: EdgeInsets.only(left: 30.h, right: 30.h),
        child: loading
            ? const BaseLoading(
                color: BaseColors.primary,
              )
            : Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: event.details!.map((detail) {
                    if (detail.type == 'string') {
                      return DecorationTextFormField(
                        hintText: detail.name,
                        isRequired: detail.isrequired,
                        onSaved: (value) => reservationController
                            .reservation.details
                            .add({detail.id: value}),
                      );
                    }
                    if (detail.type == 'number') {
                      return DecorationTextFormField(
                        hintText: detail.name,
                        isRequired: detail.isrequired,
                        keyboardType: TextInputType.number,
                        onSaved: (value) => reservationController
                            .reservation.details
                            .add({detail.id: value}),
                      );
                    }
                    return SelectRadio(
                      name: detail.name,
                      options: detail.options,
                      onChanged: (value) => reservationController
                          .reservation.details
                          .add({detail.id: value}),
                    );
                  }).toList(),
                ),
              ),
      ),
    );
  }
}

class DecorationTextFormField extends StatelessWidget {
  const DecorationTextFormField(
      {super.key,
      required this.hintText,
      this.keyboardType,
      this.isRequired = false,
      required this.onSaved});

  final String hintText;

  final TextInputType? keyboardType;

  final bool isRequired;

  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 300.w,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          onSaved: onSaved,
          validator: 'required|details'.validate(customMessages: {
            'required': 'أدخل بياناتك هنا رجاءا',
            'details': 'نسيت ان تدخل بياناتك هنا'
          }),
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
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
            labelText: hintText,
            labelStyle: TextStyle(
                fontSize: 10.sp,
                color: const Color.fromARGB(255, 161, 145, 162)),
          ),
        ),
      ),
    );
  }
}

class SelectRadio extends HookWidget {
  const SelectRadio({
    super.key,
    required this.name,
    required this.options,
    required this.onChanged,
  });

  final String name;

  final List<String> options;

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState(options.first);
    return Column(
      children: [
        Text(name),
        Wrap(
          children: options
              .map((option) => Container(
                    constraints: BoxConstraints(
                      maxWidth: 125.w,
                    ),
                    child: Row(
                      children: [
                        Radio<String>(
                          value: option,
                          groupValue: selectedValue.value,
                          onChanged: (value) {
                            selectedValue.value = value!;
                            onChanged(value);
                          },
                        ),
                        Container(
                            width: 70.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Text(
                              option,
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
