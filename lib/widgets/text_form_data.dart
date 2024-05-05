import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormDataWidget extends StatelessWidget {
  const TextFormDataWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(textDirection: TextDirection.rtl,
      children: [Text('hhggy'),
        Container(
          
              width: 327.w,
              height: 56.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.w, color: Color(0xFFCFCFCF)),
                  borderRadius: BorderRadius.circular(32.r),
                ),
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 10.h,right:10.h,bottom: 10  ),
                        child: Text(''),
                      )
                    ],
                  )
                ],
              ),
            ),
      ],
    );
  }
}