import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/event_res.dart';
import 'package:evenza/widgets/final_broduct_widget.dart';
import 'package:evenza/widgets/mini_widget.dart';
import 'package:evenza/widgets/text_form_data.dart';
import 'package:evenza/widgets/types_widget.dart';
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
              TextFormDataWidget(
                title: 'تاريخ المناسبة',
                data: 'jhhjh',
                icon: Icon(
                  Icons.date_range_outlined,
                  color: BaseColors.orange,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 32.h,
                ),
                child: Row(
                  children: [
                    TextFormDataWidgetmini(
                        title: 'title', icon: Icon(Icons.abc), data: ''),
                    SizedBox(
                      width: 20.h,
                    ),
                    TextFormDataWidgetmini(
                        title: 'title', icon: Icon(Icons.abc), data: ''),

                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //       right: 2, left: 4, top: 10, bottom: 10),
                    //   child: SizedBox(
                    //     width: 150.w,
                    //     height: 45.h,
                    //     child: TextFormField(
                    //       keyboardType: TextInputType.number,
                    //       decoration: InputDecoration(
                    //         icon: const Icon(Icons.av_timer_sharp),
                    //         iconColor: BaseColors.orange,
                    //         border: OutlineInputBorder(
                    //             borderSide: const BorderSide(
                    //                 color: BaseColors.primaryDark),
                    //             borderRadius: BorderRadius.circular(30.r)),
                    //         focusedBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(
                    //                 color: BaseColors.primaryDark),
                    //             borderRadius: BorderRadius.circular(30.r)),
                    //         disabledBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(
                    //                 color: BaseColors.primaryDark),
                    //             borderRadius: BorderRadius.circular(30.r)),
                    //         errorBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(color: Colors.red),
                    //             borderRadius: BorderRadius.circular(30.r)),
                    //         enabledBorder: OutlineInputBorder(
                    //             borderSide: const BorderSide(
                    //                 color: BaseColors.primaryDark),
                    //             borderRadius: BorderRadius.circular(30.r)),
                    //         labelText: 'وقت الانتهاء',
                    //         labelStyle: TextStyle(
                    //             fontSize: 14.sp,
                    //             color: const Color.fromARGB(255, 161, 145, 162)),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
              const TextFormDataWidget(
                title: 'تاريخ المناسبة',
                data: 'jhhjh',
                icon: Icon(
                  Icons.date_range_outlined,
                  color: BaseColors.orange,
                ),
              ),
              TextFormDataWidget(
                title: 'تاريخ المناسبة',
                data: 'jhhjh',
                icon: Icon(
                  Icons.date_range_outlined,
                  color: BaseColors.orange,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h, right: 20.h),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MiniWidget(
                                    imagePath: BaseImages.buffetarabicdinner1,
                                    ontap: () {},
                                    title: 'title'),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MiniWidget(
                                    imagePath: BaseImages.buffetarabicdinner1,
                                    ontap: () {},
                                    title: 'title'),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              // Text(
                              //   'hgkl',
                              //   style: TextStyle(
                              //       fontSize: 15.sp,
                              //       color: Colors.black,
                              //       fontWeight: FontWeight.bold),
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MiniWidget(
                                    imagePath: BaseImages.buffetarabicaseel,
                                    ontap: () {},
                                    title: 'title'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.h, right: 20.h, left: 270.h, bottom: 5.h),
                child: Text(
                  'المصور :',
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
                  title: const Text('data'),
                  onTap: () {},
                  leading: const CircleAvatar(
                      backgroundImage: AssetImage(BaseImages.birthday)),
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
