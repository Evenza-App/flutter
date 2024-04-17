import 'package:evenza/hooks/events_details_hook.dart';
import 'package:evenza/models/event.dart';
import 'package:evenza/screens/breakfast_buffet_screen.dart';
import 'package:evenza/screens/east_buffet_screen.dart';
import 'package:evenza/screens/login.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/buffet_details_widget.dart';
import 'package:evenza/widgets/decoration_widget.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_laravel_form_validation/validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class DecorationScreen extends HookWidget {
  const DecorationScreen({super.key, required this.event});

  final Event event;
  @override
  Widget build(BuildContext context) {
    final (loading, event) = useEventDetails(id: this.event.id);
    return DecorationWidget(
        title: this.event.name,
        imagePath: BaseImages.decorbirth,
        content: Padding(
          padding: EdgeInsets.only(left: 30.h, right: 30.h),
          child: loading
              ? BaseLoading(
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
                        );
                      }
                      if (detail.type == 'number') {
                        return DecorationTextFormField(
                          hintText: detail.name,
                          isRequired: detail.isrequired,
                          keyboardType: TextInputType.number,
                        );
                      }
                      return SelectRadio(
                          name: detail.name, options: detail.options);
                    }).toList(),
                  ),
                ),
        ));
  }
}

class DecorationTextFormField extends StatelessWidget {
  const DecorationTextFormField(
      {super.key,
      required this.hintText,
      this.keyboardType,
      this.isRequired = false});

  final String hintText;

  final TextInputType? keyboardType;

  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 300.w,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          validator: 'required|details'.validate(customMessages: {
            'required': 'أدخل بياناتك هنا رجاءا',
            'details': 'نسيت ان تدخل بياناتك هنا'
          }),
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
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
            labelText: hintText,
            labelStyle: TextStyle(
                fontSize: 10.sp, color: Color.fromARGB(255, 161, 145, 162)),
          ),
        ),
      ),
    );
  }
}

class SelectRadio extends HookWidget {
  const SelectRadio({super.key, required this.name, required this.options});

  final String name;

  final List<String> options;

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
                          onChanged: (value) => selectedValue.value = value!,
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
