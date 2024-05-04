import 'package:evenza/controllers/reservation/reservation_controller.dart';
import 'package:evenza/hooks/buffets_details_hook.dart';
import 'package:evenza/models/Buffet_detail.dart';
import 'package:evenza/widgets/buffet_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class BuffetDetailsScreen extends HookWidget {
  const BuffetDetailsScreen({super.key, required this.buffetDetail});
  final BuffetDetail buffetDetail;
  @override
  Widget build(BuildContext context) {
    
    final (loading, buffet) = useBuffetDetails(id: buffetDetail.id);
    return BuffetDetailsWidget(id: buffet.id,
      imagePath: buffet.image,
      onback: () {
        Get.off(null);
      },
      title: buffet.name,
      price: buffet.price.toString(),
      ingredient: buffet.ingredients,
    );
  }
}
