import 'dart:io';

import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

List<String> options = ['option 1', 'option 2'];

class DecorationWidget extends StatelessWidget {
  const DecorationWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.content,
    required this.onChooseImage,
  });
  final String imagePath;
  final String title;

  final Widget content;

  final void Function(File image) onChooseImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const SizedBox(
        height: double.infinity,
      ),
      ChooseImage(
        imagePath: imagePath,
        onChooseImage: onChooseImage,
      ),
      Positioned(
        top: 40,
        left: 13,
        child: Align(
            alignment: Alignment.topLeft,
            child: TextButton(
                onPressed: () {
                  Get.off(());
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  textDirection: TextDirection.ltr,
                  color: Colors.white,
                ))),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(minHeight: 600.h),
            padding: EdgeInsets.only(top: 30.h),
            decoration: BoxDecoration(
              color: BaseColors.purple,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r),
              ),
            ),
            child: Form(
              child: Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: BaseColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  content,
                 
                ],
              ),
            ),
          ),
        ),
        // child: Column(children: [])
      ),
    ]));
  }
}

class ChooseImage extends HookWidget {
  const ChooseImage({
    super.key,
    required this.imagePath,
    required this.onChooseImage,
  });

  final String imagePath;

  final void Function(File image) onChooseImage;

  @override
  Widget build(BuildContext context) {
    final file = useState<File?>(null);
    return GestureDetector(
      onTap: () async {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (image != null) {
          file.value = File(image.path);
          onChooseImage(file.value!);
        }
      },
      child: file.value != null
          ? Image.memory(
              file.value!.readAsBytesSync(),
              fit: BoxFit.cover,
              height: 300.h,
              width: 450.w,
            )
          : Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 300.h,
              width: 450.w,
            ),
    );
  }
}
