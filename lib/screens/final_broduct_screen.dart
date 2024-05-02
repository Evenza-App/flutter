import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/event_res.dart';
import 'package:evenza/widgets/final_broduct_widget.dart';
import 'package:evenza/widgets/text_formfeild_widget.dart';
import 'package:evenza/widgets/types_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinalBroduct extends StatelessWidget {
  const FinalBroduct({super.key});

  @override
  Widget build(BuildContext context) {
    return FinalBroductWidget(
      title: 'nmnm',
      content: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 30.h, right: 40.h, left: 20.h, bottom: 10.h),
                child: Text(
                  'المناسبة:',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 20.h,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, bottom: 10.h),
                child: Text(
                  'jjm',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 20.h,
                      color: BaseColors.primary,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Column(
            children: [
              FormFeildWidget(
                hinttext: 'تاريخ المناسبة',
                icon: Icon(Icons.date_range_outlined),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 40, left: 2, top: 10, bottom: 10),
                    child: SizedBox(
                      width: 150.w,
                      height: 45.h,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.av_timer_rounded),
                          iconColor: BaseColors.orange,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: BaseColors.primaryDark),
                              borderRadius: BorderRadius.circular(30.r)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: BaseColors.primaryDark),
                              borderRadius: BorderRadius.circular(30.r)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: BaseColors.primaryDark),
                              borderRadius: BorderRadius.circular(30.r)),
                          errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(30.r)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: BaseColors.primaryDark),
                              borderRadius: BorderRadius.circular(30.r)),
                          labelText: 'وقت البدء',
                          labelStyle: TextStyle(
                              fontSize: 14.sp,
                              color: const Color.fromARGB(255, 161, 145, 162)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 2, left: 4, top: 10, bottom: 10),
                    child: SizedBox(
                      width: 150.w,
                      height: 45.h,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.av_timer_sharp),
                          iconColor: BaseColors.orange,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: BaseColors.primaryDark),
                              borderRadius: BorderRadius.circular(30.r)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: BaseColors.primaryDark),
                              borderRadius: BorderRadius.circular(30.r)),
                          disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: BaseColors.primaryDark),
                              borderRadius: BorderRadius.circular(30.r)),
                          errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(30.r)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: BaseColors.primaryDark),
                              borderRadius: BorderRadius.circular(30.r)),
                          labelText: 'وقت الانتهاء',
                          labelStyle: TextStyle(
                              fontSize: 14.sp,
                              color: const Color.fromARGB(255, 161, 145, 162)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const FormFeildWidget(
                hinttext: 'عدد الاشخاص',
                icon: Icon(Icons.people_rounded),
              ),
              const FormFeildWidget(
                  hinttext: 'رابط موقع المكان',
                  icon: Icon(Icons.location_on_outlined)),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'hgkl',
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h, right: 20.h),
                        child: TypesWidget(
                            imagePath: BaseImages.buffetarabicdinner1,
                            ontap: () {},
                            title: 'title'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'hgkl',
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h, right: 20.h),
                        child: TypesWidget(
                            imagePath: BaseImages.buffetarabicaseel,
                            ontap: () {},
                            title: 'title'),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.h, right: 20.h, left: 270.h, bottom: 10.h),
                child: Text(
                  'المناسبة:',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 18.h),
                child: ListTile(
                  title: Text('data'),
                  onTap: () {},
                  leading: const CircleAvatar(
                      backgroundImage: AssetImage(BaseImages.birthday)),
                  trailing: Icon(Icons.arrow_back_ios_new),
                ),
              )
            ],
          )
          // TextField(
          //   decoration: InputDecoration(
          //       label: Text('data'),alignLabelWithHint: true,
          //       isCollapsed: true,
          //       isDense: true,
          //       contentPadding: EdgeInsets.all(20.h),
          //       labelStyle: TextStyle(
          //         color: Colors.black12,
          //       ),
          //       border: OutlineInputBorder()),
          // )
          // TextFormFeildWidget(
          //     hinttext: 'jk', text: Text('jnk'), icon: Icon(Icons.abc))
        ],
      ),
    );
  }
}
