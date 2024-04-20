import 'package:evenza/hooks/buffets_details_hook.dart';
import 'package:evenza/models/Buffet_detail.dart';
import 'package:evenza/screens/buffets_screen.dart';
import 'package:evenza/screens/login.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/back_ground_widget.dart';
import 'package:evenza/widgets/buffet_details_widget.dart';
import 'package:evenza/widgets/login_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_laravel_form_validation/flutter_laravel_form_validation.dart';

class BuffetDetailsScreen extends HookWidget {
  const BuffetDetailsScreen({super.key,required this.buffetDetail});
final BuffetDetail buffetDetail;
  @override
  Widget build(BuildContext context) {
     final (loading, buffet) = useBuffetDetails(id: buffetDetail.id);
    return BuffetDetailsWidget(
      imagePath: buffet.image,
      onback: () {Get.off(null);},
      title:buffet.name,
      price: buffet.price.toString(),
      ingredient: buffet.ingredients,
    );
  }
}
