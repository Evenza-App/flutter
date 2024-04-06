import 'package:device_preview/device_preview.dart';
import 'package:evenza/firebase_options.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class select_photographer extends StatelessWidget {
  const select_photographer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اختر المصور'),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            // Container(
            //   color: colo,
            // )
            ListTile(
              title: const Text("ليليان وهبي"),
              subtitle: const Text('تصوير جميع المناسبات'),
              trailing: const Icon(Icons.arrow_back),
              leading: CircleAvatar(
                child: Image.asset('assets/photographers/lilian.png'),
              ),
            ),
            ListTile(
              title: const Text('سعيد مصلح'),
              subtitle: const Text('تصوير جميع المناسبات'),
              trailing: const Icon(Icons.arrow_back),
              leading: CircleAvatar(
                child: Image.asset('assets/photographers/saeed.png'),
              ),
            ),
            ListTile(
              title: const Text('هبة جويد'),
              subtitle: const Text('تصوير جميع المناسبات'),
              trailing: const Icon(Icons.arrow_back),
              leading: CircleAvatar(
                child: Image.asset('assets/photographers/heba.png'),
              ),
            ),
            ListTile(
              title: const Text('ساهر سويدان'),
              subtitle: const Text('تصوير جميع المناسبات'),
              trailing: const Icon(Icons.arrow_back),
              leading: CircleAvatar(
                child: Image.asset('assets/photographers/saher.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
