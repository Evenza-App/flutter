import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

List<String> options = ['option 1', 'option 2'];

class DecorationWidget extends StatelessWidget {
  DecorationWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.content});
  final String imagePath;
  final String title;

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const SizedBox(
        height: double.infinity,
      ),
      Center(
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          height: 300.h,
          width: 450.w,
        ),
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
                  SizedBox(
                    height: 10.h,
                  ),
                  Builder(builder: (context) {
                    return TextButton(
                      onPressed: () {
                        BaseLoading(
                          color: BaseColors.primary,
                        );
                        if (Form.of(context).validate()) {
                          Form.of(context).save();
                          Get.off(SelectTypeBuffet());
                        }
                      },
                      child: Container(
                        width: 250.73.w,
                        height: 46.h,
                        decoration: ShapeDecoration(
                          color: BaseColors.primaryDark,
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
                    );
                  }),
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
