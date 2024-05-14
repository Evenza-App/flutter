import 'package:evenza/controllers/bottom_nav/bottom_nav_controller.dart';
import 'package:evenza/controllers/drawer/drawer_controller.dart';
import 'package:evenza/screens/setting.dart';
import 'package:flutter/material.dart' hide DrawerController;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final bottomContoller = Get.put(BottomNavController());

  static final drawerContoller = Get.put(DrawerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: drawerContoller.scaffoldKey,
        drawer: const Setting(),
        bottomNavigationBar: Obx(() => CustomBottonNavigationBar(
              selectindex: bottomContoller.selectedIndex.value,
              onChange: bottomContoller.onChange,
            )),
        body: Obx(() => bottomContoller.currentWidget),
      ),
    );
  }
}

class CustomBottonNavigationBar extends StatelessWidget {
  const CustomBottonNavigationBar({
    super.key,
    required this.selectindex,
    required this.onChange,
  });

  final int selectindex;

  final void Function(int index) onChange;

  static const _items = [
    {
      "active": 'assets/icons/HomeActive.png',
      "inactive": 'assets/icons/HomeN.png',
    },
    {
      "active": 'assets/icons/gridActive.png',
      "inactive": 'assets/icons/grid.png',
    },
    {
      "active": 'assets/icons/myEventActive.png',
      "inactive": 'assets/icons/myeventn1.png',
    },
    {
      "active": 'assets/icons/userActive.png',
      "inactive": 'assets/icons/userN.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 58,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35), topRight: Radius.circular(35)),
        color: Color.fromARGB(255, 222, 216, 255),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            _items.length,
            (index) => TextButton(
                onPressed: () {
                  onChange(index);
                },
                child: Image(
                  image: AssetImage(index == selectindex
                      ? _items[index]['active']!
                      : _items[index]['inactive']!),
                  width: 24.h,
                  height: 24.h,
                ))),
      ),
    );
  }
}
