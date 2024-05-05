import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }
}
