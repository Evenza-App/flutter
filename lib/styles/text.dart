import 'package:evenza/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class BaseTextStyles {
  static final title = GoogleFonts.poppins(
      color: BaseColors.primary,
      fontSize: 26.sp,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.3333333433.sp,
      //TODO:: fix shadow
      shadows: [
        const Shadow(
            color: BaseColors.shadowc, offset: Offset(0, 4), blurRadius: 4)
      ]);
  static final evenza = GoogleFonts.kavoon(
    decorationStyle: TextDecorationStyle.dotted,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = BaseColors.primary,
    fontSize: 37.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: 8.sp,
  );
  
  static final settingfront = GoogleFonts.cairo(
    color: BaseColors.black,
    fontSize: 19.sp,
  );

  static final font = GoogleFonts.cairo(
    color: BaseColors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,

    //TODO:: fix shadow
  );
  static final fonto = GoogleFonts.cairo(
    color: BaseColors.orange,
    fontSize: 20.sp,

    //TODO:: fix shadow
  );
  static final finalbro = GoogleFonts.cairo(
    color: BaseColors.black,
    fontSize: 27.sp, fontWeight: FontWeight.bold,
    

    //TODO:: fix shadow
  );
  static final poppins=GoogleFonts.poppins(
    
  );
}
