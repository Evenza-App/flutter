import 'dart:io';

import 'package:evenza/controllers/reservation/reservation_controller.dart';
import 'package:evenza/models/event.dart';
import 'package:evenza/screens/event_reservation_screen.dart';
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
        resizeToAvoidBottomInset: false,
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
              scrollDirection: Axis.vertical,
              child: Container(
                constraints: BoxConstraints(minHeight: 500.h),
                padding: EdgeInsets.only(top: 20.h),
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
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Container(
                          width: 250.73.w,
                          height: 46.h,
                          decoration: ShapeDecoration(
                            color: BaseColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19.r),
                            ),
                          ),
                          child: Builder(builder: (context) {
                            return Center(
                              child: TextButton(
                                onPressed: () {
                                  const BaseLoading(
                                    color: BaseColors.primary,
                                  );
                                  if (Form.of(context).validate()) {
                                    Form.of(context).save();

                                    Get.to(SelectTypeBuffet());
                                  }
                                },
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
                            );
                          }),
                        ),
                      ),
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
