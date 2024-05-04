import 'package:evenza/screens/event_types_screen.dart';
import 'package:evenza/screens/home.dart';
import 'package:evenza/screens/my_evevt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  final selectedIndex = 0.obs;

  void onChange(int index) {
    selectedIndex.value = index;
  }

  static const _screens = [
    Home(),
    EventTypesScreen(),
    MyEvent(),
    MyEvent(),
  ];

  Widget get currentWidget => _screens[selectedIndex.value];
}