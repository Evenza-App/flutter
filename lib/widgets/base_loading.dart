import 'package:flutter/material.dart';

class BaseLoading extends StatelessWidget {
  const BaseLoading({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color ?? Colors.white,
    );
  }
}
