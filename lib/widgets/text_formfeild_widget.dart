import 'package:evenza/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFeildWidget extends StatelessWidget {
  const TextFormFeildWidget({super.key,required this.hinttext,required this.text,required this.icon});
final String hinttext;
final Widget text;
final Widget icon;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        
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
            label: text,
            
            labelStyle: TextStyle(
                fontSize: 14.sp, color: const Color.fromARGB(255, 161, 145, 162)),
          ),
        );
  }
}