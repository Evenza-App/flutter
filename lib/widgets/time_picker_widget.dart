import 'package:evenza/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimePickerWidget extends HookWidget {
  const TimePickerWidget({
    super.key,
    required this.validationtext,
    required this.onSaved,
    required this.text,
  });
  final String validationtext;
  final void Function(DateTime?) onSaved;
  final String text;

  @override
  Widget build(BuildContext context) {
    final time = useState<TimeOfDay?>(null);
    return TextFormField(
      onSaved: (_) => onSaved(DateTime.now().copyWith(
        hour: time.value!.hour,
        minute: time.value!.minute,
      )),
      validator:
          'required'.validate(customMessages: {'required': validationtext}),
      keyboardType: TextInputType.number,
      //initialValue: time.value,
      controller: time.value != null
          ? TextEditingController(text: time.value?.format(context))
          : null,
      decoration: InputDecoration(
        icon: GestureDetector(
          child: const Icon(Icons.av_timer_sharp),
          onTap: () async {
            final t = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );

            if (t != null) {
              time.value = t;
            }
          },
        ),
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
        labelText: text,
        labelStyle: TextStyle(
            fontSize: 14.sp, color: const Color.fromARGB(255, 161, 145, 162)),
      ),
    );
  }
}
